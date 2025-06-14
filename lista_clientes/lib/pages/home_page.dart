import 'package:flutter/material.dart';
import 'package:lista_clientes/routes/routes_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 60, 255, 0),
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            Navigator.pushNamed(context, Routes.customers);
          },
          color: const Color.fromRGBO(0, 248, 21, 1),
          child: Icon(Icons.people_alt_rounded),
        ),
      ),
    );
  }
}
