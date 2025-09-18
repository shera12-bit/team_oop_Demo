// lib/derived_book.dart
import 'base_media_item.dart';

class Book extends MediaItem {
  int pages;

  Book({
    required int id,
    required String title,
    double rating = 0.0,
    required this.pages,
  }) : super(id: id, title: title, rating: rating);

  // unique method
  void addPages(int more) {
    if (more <= 0) {
      print('addPages failed: must be positive.');
      return;
    }
    pages += more;
    print('Added $more pages. Total pages: $pages');
  }

  // override example
  @override
  void playPreview() {
    // Child behavior overrides parent
    print('Book preview: reading a short excerpt from "$title".');
  }

  String bookInfo() => 'Book(title:$title, pages:$pages, rating:${rating.toStringAsFixed(1)})';
}
