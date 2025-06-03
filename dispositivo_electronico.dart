abstract class DispositivoElectronico {
  int codigo;
  String marca;

  DispositivoElectronico(this.codigo, this.marca);

  void imprimir() {
    print('Dispositivo Electrónico - Código: $codigo, Marca: $marca');
  }
  void registrarInventario();
}