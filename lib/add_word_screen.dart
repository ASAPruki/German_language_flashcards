import 'package:flutter/material.dart';
import 'api_service.dart';

class AddWordScreen extends StatelessWidget {
  final TextEditingController germanController = TextEditingController();
  final TextEditingController translationController = TextEditingController();

  void _submitWord(BuildContext context) async {
    final germanWord = germanController.text.trim();
    final translation = translationController.text.trim();

    if (germanWord.isNotEmpty && translation.isNotEmpty) {
      await ApiService.addWord(germanWord, translation);
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Word'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: germanController,
              decoration: const InputDecoration(labelText: 'German Word'),
            ),
            TextField(
              controller: translationController,
              decoration: const InputDecoration(labelText: 'Translation'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _submitWord(context),
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
