import 'package:flutter/material.dart';
import 'package:lista_clientes/pages/customersList.dart';
import 'package:lista_clientes/pages/home_page.dart';
import 'package:lista_clientes/routes/routes_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: const HomePage()),
      routes: {Routes.customers: (context) =>  CustomerslistPage()},
    );
  }
}
