import 'package:flutter/material.dart';
import 'package:gestor_de_tareas/views/add_task_page.dart';
import 'package:gestor_de_tareas/views/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Tareas',
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.cyan),
      routes: {'/add': (ctx) => const AddTaskPage()},
    );
  }
}
