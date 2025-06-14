class Taller {
  static late String nombre = "Taller Mecánico Central";
  static String mensajeGeneral = "¡Bienvenido al Taller! ";
  static int _totalReparaciones = 0;

  static void cambiarMensaje(String nuevoMensaje) {
    mensajeGeneral = nuevoMensaje;
  }

  static void incrementarContador() {
    _totalReparaciones++;
  }

  static int obtenerReparaciones() {
    return _totalReparaciones;
  }
}

class Empleado {
  late String nombre;

  void acutalizarMensaje(String mensaje) {
    Taller.cambiarMensaje(mensaje);
  }
}

class Vehiculo {
  late String placa;
  late String diagnostico;
  String estado = 'Pendiente';
  dynamic extraInfo;

  void registrarDiagnostico(String texto) {
    diagnostico = texto;
    estado = "Reparado";
    Taller.incrementarContador();
  }

  void resumen() {
    print('*** ${Taller.nombre} ***');
    print(Taller.mensajeGeneral);
    print('Placa: $placa');
    print('Diagnostico: $diagnostico');
    print('Estado: $estado');
    print('Informacion Adicional: $extraInfo\n');
  }
} 
 