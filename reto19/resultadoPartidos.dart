void main(){
  print('Jugar Boca vs River');
  print('Fin partido Boca vs River');
  print('Gnanador Boca');
  resultadoPartido2();
  print('Esperando resultados del partido Estudiantes vs Huracan');
}

Future<String> partido2 (){
  return Future.delayed(Duration(seconds: 5),()=> 'Partido 2 finalizado gana Huracan' );
}

void resultadoPartido2() async{
  final mensaje = await partido2();
  print(mensaje);

  print('Informar al jugadores de River');
  print('River a la B');

}