import 'package:flutter/material.dart';
import 'flashcards.dart'; // Import the flashcards data
import 'flashcards_screen.dart'; // Import the flashcard screen

void main() {
  shuffleFlashcards(); // Shuffle cards before starting the app
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Language Flashcards',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blueGrey,
        scaffoldBackgroundColor: const Color(0xFF121212),
        cardColor: const Color(0xFF1E1E1E),
      ),
      home: const FlashcardScreen(),
    );
  }
}