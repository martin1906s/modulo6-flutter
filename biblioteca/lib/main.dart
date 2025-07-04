import 'package:biblioteca/views/addBook_page.dart';
import 'package:biblioteca/views/home_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biblioteca Demo',
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.red),
      routes: {'/add': (ctx) => const AddbookPage()},
    );
  }
}
