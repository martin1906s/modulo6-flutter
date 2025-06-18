class Pelicula {
  String titulo;
  int anio;

  Pelicula(this.titulo, this.anio);

}

void main() {
  Map<String, List<Pelicula>> catalogoStreaming = {
    'Netflix': [],
    'HBO': [],
    'Disney+': [],
  };

  catalogoStreaming['Netflix']!.addAll([
    Pelicula('Stranger Things', 2016),
    Pelicula('El Camino', 2019),
  ]);
  catalogoStreaming['HBO']!.addAll([
    Pelicula('Game of Thrones', 2011),
    Pelicula('Chernobyl', 2019),
  ]);
  catalogoStreaming['Disney+']!.addAll([
    Pelicula('The Mandalorian', 2019),
    Pelicula('Soul', 2020),
  ]);

  print('Películas en Netflix:');
  for (var pelicula in catalogoStreaming['Netflix']!) {
    print(pelicula.titulo);
  }
  print('\n');

  catalogoStreaming['Disney+']!.add(Pelicula('Luca', 2021));

  catalogoStreaming['HBO']![0].anio = 2012;

  catalogoStreaming['Netflix']!.removeAt(1);

  catalogoStreaming.forEach((plataforma, peliculas) {
    print('Plataforma: $plataforma');
    for (var pelicula in peliculas) {
      print('  - ${pelicula.titulo} (${pelicula.anio})');
    }
  });
}
