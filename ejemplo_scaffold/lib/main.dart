import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () => {print('Test 👍👍')},
          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.abc), label: 'Productos'),
            BottomNavigationBarItem(
              icon: Icon(Icons.money_off),
              label: 'Comprar',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.accessibility_new_sharp),
              label: 'Tiempo de entrega',
            ),
          ],
        ),
        appBar: AppBar(
          title: Text(
            'APP TEST',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.grey,
          shadowColor: const Color.fromARGB(255, 95, 90, 90),
          elevation: 10,
        ),
        drawer: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(Icons.house), Text('Home')],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(Icons.abc_outlined), Text('Productos')],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(Icons.cancel), Text('Cancelar')],
              ),
            ],
          ),
        ),
        body: Center(child: Text('Hello World!')),
      ),
    );
  }
}
