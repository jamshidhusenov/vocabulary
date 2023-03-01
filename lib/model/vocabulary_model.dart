class Vocabulary{
  int id;
String word;
String translation;

  Vocabulary({required this.id,required this.word,required this.translation});

  @override
  String toString() {
    return 'Vocabulary{id: $id, word: $word, translation: $translation}';
  }
}