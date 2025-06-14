import 'taller.dart';

void main() {
  var empleado = Empleado();
  empleado.nombre = 'Carlos';
  empleado.acutalizarMensaje("Hola, Gracias por venir al Taller");

  var vehiculo1 = Vehiculo();
  vehiculo1.placa = 'PVH - 945';
  vehiculo1.registrarDiagnostico('Vidrio Roto');
  vehiculo1.extraInfo = 10.5;
  vehiculo1.resumen();

  var vehiculo2 = Vehiculo();
  vehiculo2.placa = 'PCQ - 3920';
  vehiculo2.registrarDiagnostico('Fallo en motor');
  vehiculo2.extraInfo = 'Mejora en el chasis';
  vehiculo2.resumen();

  print('Total de Reparaciones: ${Taller.obtenerReparaciones()}');
}
