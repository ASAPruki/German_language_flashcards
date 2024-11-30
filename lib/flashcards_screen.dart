import 'package:flutter/material.dart';
import 'flashcards.dart';  // Import the flashcard data
import 'add_flashcard_dialog.dart';  // Import the add flashcard dialog

class FlashcardScreen extends StatefulWidget {
  const FlashcardScreen({super.key});

  @override
  FlashcardScreenState createState() => FlashcardScreenState();
}

class FlashcardScreenState extends State<FlashcardScreen> {
  int currentIndex = 0;
  bool isFlipped = false;

  void flipCard() {
    setState(() {
      isFlipped = !isFlipped;
    });
  }

  void nextCard() {
    setState(() {
      currentIndex = (currentIndex + 1) % flashcards.length;
      isFlipped = false; // Reset flip state for new card
    });
  }

  void addFlashcard(String word, String translation) {
    setState(() {
      flashcards.add({'word': word, 'translation': translation});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'German Language Flashcards',
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF1F1B24),
      ),
      body: Center(
        child: GestureDetector(
          onTap: flipCard,
          child: Card(
            elevation: 4,
            color: isFlipped
                ? const Color(0xFF3E3E3E) // Darker color when flipped
                : const Color(0xFF1E1E1E), // Default color
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Container(
              padding: const EdgeInsets.all(24),
              width: 300,
              height: 200,
              alignment: Alignment.center,
              child: Text(
                isFlipped
                    ? flashcards[currentIndex]['translation'] ?? ''
                    : flashcards[currentIndex]['word'] ?? '',
                style: const TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: FloatingActionButton(
                onPressed: () => showAddFlashcardDialog(context, addFlashcard),
                backgroundColor: Colors.green,
                tooltip: 'Add New Flashcard',
                child: const Icon(Icons.add)
            ),
          ),
          FloatingActionButton.extended(
            onPressed: nextCard,
            label: const Text('Next Word'),
            icon: const Icon(Icons.navigate_next),
            backgroundColor: const Color(0xFF3E3E3E),
          ),
        ],
      ),
    );
  }
}
