import 'package:flutter/material.dart';
import '../models/book.dart';
import '../services/databaseHelper.dart';

class AddbookPage extends StatefulWidget {
  const AddbookPage({super.key});

  @override
  State<AddbookPage> createState() => _AddbookPageState();
}

class _AddbookPageState extends State<AddbookPage> {
  final titleController = TextEditingController();
  final authorController = TextEditingController();
  final noteController = TextEditingController();
  String status = 'Pendiente';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Agregar Libro')),
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
                final book = Book(
                  id: '',
                  title: titleController.text,
                  author: authorController.text,
                  status: status,
                  note: noteController.text,
                );
                await DatabaseHelper().insertBook(book);
                Navigator.pop(context, true);
              },
              child: const Text('Guardar'),
            ),
          ],
        ),
      ),
    );
  }
}
