void main(){
  print('Haciendo el deber');
  print('Entregar deber');
  entregarNotas();
  print('Regresar a casa');
}

Future<String> calificarNotas (){
  return Future.delayed(Duration(seconds: 4), () => 'Nota calificada');
}

void entregarNotas() async{
  final mensaje = await calificarNotas();
  print(mensaje);

  print('LLamar a estudiante');
  print('Estudiante feliz por su nota');
}