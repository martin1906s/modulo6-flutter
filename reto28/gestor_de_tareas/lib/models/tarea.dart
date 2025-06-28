class Tarea {
  const Tarea({
    required this.id,
    required this.title,
    required this.descripcion,
    required this.dueDate,
    required this.status,
  });
  final int id;
  final String title;
  final String descripcion;
  final String dueDate;
  final String status;

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      'title': title,
      'descripcion': descripcion,
      'dueDate': dueDate,
      'status': status,
    };
  }
}
