// lib/demo_member2.dart
import 'derived_book.dart';

void runDemo() {
  print('--- Demo: Book (Member 2) ---');
  var book = Book(id: 101, title: 'Dart Adventures', rating: 4.5, pages: 200);
  print(book.info());
  book.updateRating(7.2);
  try {
    book.rating = 11; // should throw and be caught
  } catch (e) {
    print('Setter validation: $e');
  }
  book.addPages(20);
  book.playPreview();
  print(book.bookInfo());
}
