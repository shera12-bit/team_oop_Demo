class MediaItem {
  int id;
  String title;
  double _rating;

  MediaItem({
    required this.id,
    required this.title,
    double rating = 0.0,
  }) : _rating = rating;

  // getter
  double get rating => _rating;

  // setter with validation
  set rating(double value) {
    if (value < 0 || value > 10) {
      throw ArgumentError('Rating must be between 0 and 10.');
    }
    _rating = value;
  }

  // method example
  void updateRating(double newRating) {
    rating = newRating;
    print('Updated rating to $_rating');
  }

  // base method to override
  void playPreview() {
    print('Playing generic media preview...');
  }

  String info() => 'MediaItem(id:$id, title:$title, rating:$_rating)';
}
