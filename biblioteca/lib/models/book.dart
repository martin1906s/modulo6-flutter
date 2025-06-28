class Book {
  Book({
    required this.id,
    required this.title,
    required this.author,
    required this.status,
    required this.note,
  });
  final int id;
  final String title;
  final String author;
  final String status;
  final String note;

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      'title': title,
      'author': author,
      'status': status,
      'note': note,
    };
  }
}
