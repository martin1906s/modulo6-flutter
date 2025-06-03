import 'dispositivo_electronico.dart';

class Celular extends DispositivoElectronico {
  Celular(int codigo, String marca) : super(codigo, marca);

  @override
  void imprimir() {
    print('Celular - Código: $codigo, Marca: $marca');
  }

  @override
  void registrarInventario(){
    print("Registrando inventario:\nCelular\n Código: $codigo\n Marca: $marca\n\n");
  }
}