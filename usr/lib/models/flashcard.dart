class Flashcard {
  final String id;
  final String categoryId;
  final String korean;
  final String romanization;
  final String english;
  final String? notes;

  const Flashcard({
    required this.id,
    required this.categoryId,
    required this.korean,
    required this.romanization,
    required this.english,
    this.notes,
  });
}
