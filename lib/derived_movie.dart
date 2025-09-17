// lib/derived_movie.dart
import 'base_media_item.dart';

class Movie extends MediaItem {
  double duration; // minutes

  Movie({ required int id, required String title, double rating = 0.0, required this.duration })
    : super(id: id, title: title, rating: rating);

  void playTrailer() {
    if (rating < 2) {
      print('Trailer restricted: rating too low.');
      return;
    }
    print('Playing trailer for "$title" (${duration.toStringAsFixed(0)} min)');
  }

  @override
  void playPreview() {
    // call parent then add extra behavior
    super.playPreview();
    print('Movie-specific preview finishes with trailer snippet.');
  }
}
