import 'dispositivo_electronico.dart';

class Celular extends DispositivoElectronico{
  @override
  void imprimir (){
    print('Celular sin info');
  }
}

void main(){
  final cel = Celular();
  cel.imprimir();
}