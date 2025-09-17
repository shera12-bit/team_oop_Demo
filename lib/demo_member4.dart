// lib/demo_member4.dart
import 'derived_music.dart';

void runDemo() {
  print('--- Demo: Music (Member 4) ---');
  var s = Music(id: 301, title: 'Dart Beats', rating: 6.0, artist: 'DJ Async');
  print(s.info());
  s.loopPreview(2);
}
