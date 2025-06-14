import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return CalculatorPageState();
  }
}

class CalculatorPageState extends State {
  String strResultado = '0';
  int resultado = 0;
  int valor1 = 0;
  int valor2 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(
          'Calculadora Martín',
          style: TextStyle(
          color: Colors.white,
          fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Ingrese Número"),
            TextField(
              keyboardType: TextInputType.numberWithOptions(),
              controller: TextEditingController(text: '0'),textAlign: TextAlign.center,
              onChanged: (text) => {
                valor1 = int.parse(text)
              },
            ),
            Text("Ingrese Número"),
            TextField(
              keyboardType: TextInputType.numberWithOptions(),
              controller: TextEditingController(text: '0'),textAlign: TextAlign.center,
              onChanged: (text) => {
                valor2 = int.parse(text)
              },
            ),
            MaterialButton(
              color: Colors.blue,
              child: Icon(Icons.add,color: Colors.white,),
              onPressed: (){
                resultado = valor1 + valor2;
                strResultado = resultado.toString();
                print(strResultado);
                setState(() {});
              }),
              Text(strResultado),
          ],
        ),
      ),
    );
  }
}
