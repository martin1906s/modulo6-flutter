import 'tienda.dart';

void main(){
  var producto1 = Producto('D35S7FD');
  producto1.registrarVenta('Alimento', 9.45, 'Defectuoso');
  producto1.resumen();
  
  Tienda.cambiarAnuncio('Nuevo Producto');

  var producto2 = Producto('SF8FGFD5');
  producto2.registrarVenta('Bebida', 3.56, 0.3);
  producto2.resumen();

  print('Total Ventas: ${Tienda.obtenerVentas()}');
  
}