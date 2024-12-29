import 'package:flutter/material.dart';
import 'word.dart';

class WordCard extends StatefulWidget {
  final Word word;

  WordCard({required this.word});

  @override
  _WordCardState createState() => _WordCardState();
}

class _WordCardState extends State<WordCard> {
  bool showTranslation = false;

  void _toggleCard() {
    setState(() {
      showTranslation = !showTranslation;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleCard,
      child: Card(
        margin: const EdgeInsets.all(16),
        child: Container(
          height: 200,
          width: 250,
          alignment: Alignment.center,
          child: Text(
            showTranslation ? widget.word.translation : widget.word.germanWord,
            style: const TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
