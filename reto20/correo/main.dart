import 'servidor_correo.dart';

void main() {
  final cooreo1 = ServidorCorreo();
  cooreo1.conectar();
  cooreo1.enviarCorreo('Pablo', 'Urgente');

  final cooreo2 = ServidorCorreo();
  cooreo2.enviarCorreo('Mario', 'Certificado');

  print(cooreo1 == cooreo2);
  print('Conexion correo 1: ${cooreo1.estaConectado}');

  cooreo2.desconectar();
  print('Conexion correo 2: ${cooreo2.estaConectado}');
}
