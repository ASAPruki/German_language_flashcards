class Word {
  final int id;
  final String germanWord;
  final String translation;

  Word({required this.id, required this.germanWord, required this.translation});

  factory Word.fromJson(Map<String, dynamic> json) {
    return Word(
      id: json['ID'] is String ? int.parse(json['ID']) : json['ID'],  // Handle both String and int
      germanWord: json['german_word'],
      translation: json['translation'],
    );
  }
}
