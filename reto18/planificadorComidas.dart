void main(){
  List<String> comidasFavoritas = ['Guatita', 'Sushi', 'Pizza', 'Librillo', 'Salchipapa'];

  comidasFavoritas.add('Hamburguesa');
  comidasFavoritas.remove('Librillo');
  print(comidasFavoritas[1]);

  List<List<String>> menuSemanal = [
    ['Cafe', 'Sushi', 'Pastel'],
    ['Jugo', 'Arroz', 'Pollo'],
    ['Agua', 'Chaulafan', 'Verduras'],
    ['Te', 'Mariscos', 'Pastel'],
    ['Cafe', 'Verduras', 'Carne'],
    ['Te', 'Papas', 'Asado'],
    ['Huevo', 'Arroz', 'Higo'],
  ];

  print(menuSemanal[1][1]);
  menuSemanal[4][2] = 'Tortillas';
  
  for (var semana in menuSemanal) {
    print(semana);
  }
}