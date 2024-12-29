// The api url is hosted on awardspace: 'http://mohamadharouki.atwebpages.com/API.php';
// 2 actions are in the API: random (gets a random word and its translation from the database), and add (posts a word and its translation to the database).

import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'German Language Flashcards',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blueGrey,
        scaffoldBackgroundColor: const Color(0xFF121212),
        cardColor: const Color(0xFF1E1E1E),
      ),
      home: HomeScreen(),
    );
  }
}
