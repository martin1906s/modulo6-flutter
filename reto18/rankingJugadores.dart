void main() {
  Map<String, int> puntajes = {'Juan': 10, 'Pedro': 9, 'Mario': 2, 'Anuel': 6};
  print(puntajes.keys);
  print(puntajes['Mario']!);
  puntajes['Anuel'] = 10;
  puntajes['Martin'] = 8;
  puntajes.remove('Pedro');

  print(puntajes);
}
