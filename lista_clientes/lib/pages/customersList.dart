import 'package:flutter/material.dart';
import 'package:lista_clientes/class/customers.dart';

class CustomerslistPage extends StatelessWidget {
  final List<Customer> customers = [
    Customer(name: 'Martin', lastName: 'Simbaña', age: 18),
    Customer(name: 'Mayte', lastName: 'Simbaña', age: 13),
    Customer(name: 'Chirstian', lastName: 'Simbaña', age: 45),
    Customer(name: 'Miguel', lastName: 'Simbaña', age: 60),
    Customer(name: 'Marco', lastName: 'Simbaña', age: 44),
    Customer(name: 'Ezequiel', lastName: 'Simbaña', age: 8),
    Customer(name: 'Veronica', lastName: 'Simbaña', age: 32),
    Customer(name: 'Sofia', lastName: 'Simbaña', age: 1),
    Customer(name: 'Gabriel', lastName: 'Simbaña', age: 5),
  ];

  CustomerslistPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Lista de Clientes',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor:  Color.fromARGB(255, 99, 0, 145),
      ),
      body: ListView.builder(
        itemCount: customers.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(customers[index].name),
            subtitle: Text(customers[index].lastName),
            trailing: Text(customers[index].age.toString()),
            );
        },
      ),
    );
  }
}
