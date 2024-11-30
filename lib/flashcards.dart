import 'dart:math';

final List<Map<String, String>> flashcards = [
  {'word': 'Hallo', 'translation': 'Hello'},
  {'word': 'Tschüss', 'translation': 'Bye'},
  {'word': 'Deutschland', 'translation': 'Germany'},
  {'word': 'Und', 'translation': 'And'},
  {'word': 'Oder', 'translation': 'Or'},
  {'word': 'Milch', 'translation': 'Milk'},
  {'word': 'Kaffee', 'translation': 'Coffee'},
  {'word': 'Tee', 'translation': 'Tea'},
  {'word': 'Bitte', 'translation': 'Please'},
  {'word': 'Wein', 'translation': 'Wine'},
  {'word': 'Bier', 'translation': 'Beer'},
  {'word': 'Brot', 'translation': 'Bread'},
  {'word': 'Wasser', 'translation': 'Water'},
  {'word': 'Danke', 'translation': 'Thank you/Thanks'},
  {'word': 'Ja', 'translation': 'Yes'},
  {'word': 'Nein', 'translation': 'No'},
  {'word': 'Ich', 'translation': 'I'},
  {'word': 'Bin', 'translation': 'Am'},
  {'word': 'Du', 'translation': 'You'},
  {'word': 'Ein/Eine', 'translation': 'A'},
  {'word': 'Mein/Meine', 'translation': 'My'},
  {'word': 'Mutter', 'translation': 'Mother'},
  {'word': 'Vater', 'translation': 'Father'},
  {'word': 'Schwester', 'translation': 'Sister'},
  {'word': 'Bruder', 'translation': 'Brother'},
  {'word': 'Mann', 'translation': 'Man/Husband'},
  {'word': 'Frau', 'translation': 'Woman/Wife'},
  {'word': 'Sohn', 'translation': 'Son'},
  {'word': 'Tochter', 'translation': 'Daughter'},
  {'word': 'Sehr', 'translation': 'Very'},
  {'word': 'Groß', 'translation': 'Tall/Big'},
  {'word': 'Klein', 'translation': 'Small'},
  {'word': 'Klug', 'translation': 'Smart'},
  {'word': 'Nett', 'translation': 'Nice'},
  {'word': 'Der/Die/Das', 'translation': 'The'},
  {'word': 'Junge', 'translation': 'Boy'},
  {'word': 'Jung', 'translation': 'Young'},
  {'word': 'Schön', 'translation': 'Beautiful'},
  {'word': 'Elefant', 'translation': 'Elephant'},
  {'word': 'Hund', 'translation': 'Dog'},
  {'word': 'Katze', 'translation': 'Cat'},
  {'word': 'Maus', 'translation': 'Mouse'},
  {'word': 'Bär', 'translation': 'Bear'},
  {'word': 'Eule', 'translation': 'Owl'},
  {'word': 'Rentier', 'translation': 'Reindeer'},
  {'word': 'Wo', 'translation': 'Where'},
  {'word': 'Was', 'translation': 'What'},
  {'word': 'Wie', 'translation': 'How'},
  {'word': 'Aus', 'translation': 'From'},
  {'word': 'Frohe', 'translation': 'Happy'},
  {'word': 'Super', 'translation': 'Great'},
  {'word': 'Gut', 'translation': 'Good'},
  {'word': "Wie geht's", 'translation': 'How are you?'},
  {'word': 'Es geht', 'translation': 'I am all right'},
  {'word': 'Auf Wiedersehen', 'translation': 'Goodbye'},
  {'word': 'Prost', 'translation': 'Cheers'},
  {'word': 'Bis bald', 'translation': 'See you soon'},
  {'word': 'Bis Später', 'translation': 'See you later'},
  {'word': 'Natürlich', 'translation': 'Of course'},
  {'word': 'Käse', 'translation': 'Cheese'},
  {'word': 'Salat', 'translation': 'Salad'},
  {'word': 'Mit', 'translation': 'With'},
  {'word': 'Lecker', 'translation': 'Delicious'},
  {'word': 'Heiß', 'translation': 'Hot'},
  {'word': 'Kalt', 'translation': 'Cold'},
  {'word': 'Hier', 'translation': 'Here'},
  {'word': 'Ei', 'translation': 'Egg'},
  {'word': 'MineralWasser', 'translation': 'Mineral water'},
  {'word': 'Speisekarte', 'translation': 'Menu'},
  {'word': 'Kellner', 'translation': 'Waiter'},
  {'word': 'Entschuldigung', 'translation': 'Excuse me'},
  {'word': 'Salz', 'translation': 'Salt'},
  {'word': 'Wurst', 'translation': 'Sausage'},
  {'word': 'Essen', 'translation': 'Food'},
  {'word': 'Rechnung', 'translation': 'Check'},
  {'word': 'Zu', 'translation': 'too'},
  {'word': 'Wunderbar', 'translation': 'Wonderful'}
];

void shuffleFlashcards() {
  flashcards.shuffle(Random());
}