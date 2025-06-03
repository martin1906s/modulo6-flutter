import 'dispositivo_electronico.dart';
import 'celular.dart';

class Computador extends DispositivoElectronico {
  int capacidadDisco;
  Computador(this.capacidadDisco, int codigo, String marca)
    : super(codigo, marca);
  @override
  void imprimir() {
    print(
      'Computador - Código: $codigo, Marca: $marca, Capacidad del Disco: $capacidadDisco GB',
    );
  }
  @override
  void registrarInventario() {
    print('Registrando inventario:\nComputador\n Código: $codigo\n Marca: $marca\n Capacidad del Disco\n $capacidadDisco GB');
  }
}
void main() {
  final comp = Computador(512, 1001, 'Dell');
  final cel = Celular(2001, 'Samsung');
  comp.imprimir();
  cel.imprimir();
  cel.registrarInventario();
  comp.registrarInventario();
}
