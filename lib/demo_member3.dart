// lib/demo_member3.dart
import 'derived_movie.dart';

void runDemo() {
  print('--- Demo: Movie (Member 3) ---');
  var m = Movie(id: 201, title: 'Flutter Film', rating: 5.0, duration: 120);
  print(m.info());
  m.playTrailer();
  m.playPreview();
}
