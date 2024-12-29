import 'package:flutter/material.dart';
import 'api_service.dart';
import 'word_card.dart';
import 'word.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Word? currentWord;

  @override
  void initState() {
    super.initState();
    _fetchRandomWord();
  }

  void _fetchRandomWord() async {
    final word = await ApiService.fetchRandomWord();
    setState(() {
      currentWord = word;
    });
  }


  void _showAddFlashcardDialog() {
    String word = '';
    String translation = '';

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Add New Flashcard'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: const InputDecoration(labelText: 'German Word'),
                onChanged: (value) {
                  word = value;
                },
              ),
              TextField(
                decoration: const InputDecoration(labelText: 'Translation'),
                onChanged: (value) {
                  translation = value;
                },
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () async {
                if (word.isNotEmpty && translation.isNotEmpty) {
                  await ApiService.addWord(word, translation);
                  _fetchRandomWord();
                }
                Navigator.of(context).pop();
              },
              child: const Text('Add'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('German Language Flashcards'),
      ),
      body: Center(
        child: currentWord == null
            ? const CircularProgressIndicator()
            : WordCard(word: currentWord!),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: _fetchRandomWord,
            tooltip: 'Change Word',
            child: const Icon(Icons.arrow_forward),
          ),
          const SizedBox(height: 16),
          FloatingActionButton(
            onPressed: _showAddFlashcardDialog,  // Show the dialog here
            tooltip: 'Add Word',
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
