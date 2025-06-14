class Tienda {
  static String nombre = 'Tuti';
  static String anuncio = "¡Bienvenidos!";
  static int _productosVendidos = 0;

  static String cambiarAnuncio(String texto) {
    anuncio = texto;
    return anuncio;
  }

  static void aumentarVentas() {
    _productosVendidos++;
  }

  static int obtenerVentas() {
    return _productosVendidos;
  }
}

class Producto {
  Producto(this.codigo,);
  final String codigo;
  late String descripcion;
  double precio=0;
  dynamic observacion;

  void registrarVenta(
    String nDescripcion,
    double nPrecio,
    dynamic nObservacion,
  ) {
    descripcion = nDescripcion;
    precio = nPrecio;
    observacion = nObservacion;
    Tienda.aumentarVentas();
  }

  void resumen(){
    print('\n*** ${Tienda.nombre} ***');
    print(Tienda.anuncio);
    print('ID: $codigo');
    print('Descripcion: $descripcion');
    print('Precio: $precio');
    print('Observacion: $observacion\n');
  }
}
