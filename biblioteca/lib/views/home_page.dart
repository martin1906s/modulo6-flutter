import 'package:biblioteca/models/book.dart';
import 'package:biblioteca/services/databaseHelper.dart';
import 'package:biblioteca/views/editBook_page.dart';
import 'package:biblioteca/widgets/book_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<Book>> _bookList;
  @override
  void initState() {
    super.initState();
    _refreshList();
  }

  void _refreshList() {
    setState(() {
      _bookList = DatabaseHelper().getBooks();
    });
  }

  void _deleteBook(int id) async {
    await DatabaseHelper().deleteBook(id);
    _refreshList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Mi Biblioteca')),
      body: FutureBuilder<List<Book>>(
        future: _bookList,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No Hay Libros'));
          } else {
            return ListView(
              children: snapshot.data!
                  .map(
                    (book) => BookTile(
                      book: book,
                      onDelete: () => _deleteBook(book.id),
                      onEdit: () async {
                        final result = await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => EditbookPage(book: book),
                          ),
                        );
                        if (result == true) {
                          _refreshList();
                        }
                      },
                    ),
                  )
                  .toList(),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await Navigator.pushNamed(context, '/add');
          if (result == true) {
            _refreshList();
          }
        },
        child: const Icon(Icons.add) ,
      ),
    );
  }
}
