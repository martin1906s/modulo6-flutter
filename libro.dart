class Libro {
  String ISBN;
  String titulo;
  int? numeroPaginas;
  String? descripcion;

  Libro(this.ISBN, this.titulo){
    this.numeroPaginas;
    this.descripcion;
  }
}

void main(){
  final l1 = Libro('ISBN 874-65654-21','Donde todo brilla');
  print('${l1.ISBN}\nTitulo: ${l1.titulo}\nNúmero de Páginas: ${l1.numeroPaginas}\nDescripcion: ${l1.descripcion}');
}