// lib/derived_movie.dart
class Movie {
  String title;
  int duration; // in minutes

  Movie({required this.title, required this.duration});

  void playTrailer() {
    print('Playing trailer for $title');
  }
}
