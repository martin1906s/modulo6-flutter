class MiProducto {
  String codigo;
  double precio;
  String? descripcion;

  MiProducto(this.codigo, this.precio, this.descripcion);
  MiProducto.origen(this.codigo):precio=0.0;
}

void ejecutar(String codigo, double precio, String? descripcion){
  print('Codigo: $codigo\nPrecio: $precio\nDescripcion: $descripcion\n\n\n');
}
void main(){
  final p = MiProducto('21383gj4324', 9.5, 'Holaaa');
  final p2 = MiProducto.origen('3274ykjtre7');

  ejecutar(p.codigo, p.precio, p.descripcion);
  ejecutar(p2.codigo, p2.precio, p2.descripcion);
  
}