import 'package:flutter/material.dart';
import 'package:regular_tasks/tasks/audio%20video%20player/home%20page/view/audio_video_player_home_page.dart';

class AudioVideoPlayerExample extends StatelessWidget {
  const AudioVideoPlayerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      home: const AudioVideoPlayerHomePage(),
    );
  }
}
