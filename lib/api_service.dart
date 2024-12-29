import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'word.dart';

class ApiService {
  static const String apiUrl = 'http://mohamadharouki.atwebpages.com/API.php';

  static Future<Word> fetchRandomWord() async {
    final response = await http.get(Uri.parse('http://mohamadharouki.atwebpages.com/API.php?action=random')).timeout(const Duration(seconds: 10));

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = convert.jsonDecode(response.body);
      if (data['error'] != null) {
        throw Exception(data['error']);
      }
      return Word.fromJson(data); // Makes sure that this maps correctly.
    } else {
      throw Exception('Failed to load word');
    }
  }


  static Future<void> addWord(String wordInGerman, String translation) async {
    try {
      final response = await http.post(
        Uri.parse('http://mohamadharouki.atwebpages.com/API.php?action=add'),
        body: {
          'action': 'add',
          'german_word': wordInGerman,
          'translation': translation,
        },
      ).timeout(const Duration(seconds: 10));

      if (response.statusCode == 200) {
        print('Word added successfully');
      } else {
        print('Failed to add word. Status code: ${response.statusCode}');
      }
    } catch (e) {
      print('Error adding word: $e');
    }
  }
}
