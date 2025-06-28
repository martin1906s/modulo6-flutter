import 'package:flutter/material.dart';
import '../models/book.dart';
import '../services/databaseHelper.dart';

class EditbookPage extends StatefulWidget {
  final Book book;
  const EditbookPage({super.key, required this.book});

  @override
  State<EditbookPage> createState() => _EditbookPageState();
}

class _EditbookPageState extends State<EditbookPage> {
  late TextEditingController titleController;
  late TextEditingController authorController;
  late TextEditingController noteController;
  late String status;

  @override
  void initState() {
    super.initState();
    titleController = TextEditingController(text: widget.book.title);
    authorController = TextEditingController(text: widget.book.author);
    noteController = TextEditingController(text: widget.book.note);
    status = widget.book.status;
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Editar Libro')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(labelText: 'Título'),
            ),
            TextField(
              controller: authorController,
              decoration: const InputDecoration(labelText: 'Autor'),
            ),
            DropdownButton<String>(
              value: status,
              items: ['Leido', 'Pendiente']
                  .map(
                    (s) => DropdownMenuItem<String>(value: s, child: Text(s)),
                  )
                  .toList(),
              onChanged: (val) => setState(() => status = val!),
            ),
            TextField(
              controller: noteController,
              decoration: const InputDecoration(labelText: 'Nota'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                final updateBook = Book(
                  id: widget.book.id,
                  title: titleController.text,
                  author: authorController.text,
                  status: status,
                  note: noteController.text,
                );
                await DatabaseHelper().updateBook(updateBook);
                Navigator.pop(context, true);
              },
              child: const Text('Actualizar'),
            ),
          ],
        ),
      ),
    );
  }
}
