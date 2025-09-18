// lib/base_media_item.dart
class MediaItem {
  final int id;
  String title;
  double _rating;       // private
  String _secretCode;   // sensitive private data

  MediaItem({
    required this.id,
    required this.title,
    double rating = 0.0,
    String secretCode = '',
  })  : _rating = rating,
        _secretCode = secretCode;

  // Getter + setter for _rating (setter validates)
  double get rating => _rating;
  set rating(double value) {
    if (value < 0 || value > 10) {
      throw ArgumentError('Rating must be between 0 and 10.');
    }
    _rating = value;
  }

  // Example method: updateRating (validates)
  bool updateRating(double newRating) {
    if (newRating < 0 || newRating > 10) {
      print('updateRating failed: rating out of range (0..10).');
      return false;
    }
    _rating = newRating;
    print('Rating updated to ${_rating.toStringAsFixed(1)}');
    return true;
  }

  // Example method: playPreview (uses encapsulated state)
  void playPreview() {
    if (_rating < 1.0) {
      print('Preview unavailable (rating too low).');
      return;
    }
    print('Playing preview of "$title" (id: $id) ...');
  }

  // Helper info
  String info() => 'MediaItem(id:$id, title:$title, rating:${_rating.toStringAsFixed(1)})';
}
