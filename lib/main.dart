import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:regular_tasks/tasks/audio%20video%20player/audio_video_player_exmaple.dart';
import 'package:regular_tasks/tasks/audio%20video%20player/home%20page/provider/audio_video_provider.dart';
import 'package:regular_tasks/tasks/carousel%20slider/home%20page/provider/carousel_provider.dart';

// CarouselSliderExample()
// AudioVideoPlayerExample()


void main(){
  runApp(MultiProvider(

      providers: [
        ChangeNotifierProvider(create: (context) => CarouselProvider()),
        ChangeNotifierProvider(create: (context) => AudioVideoProvider()),
      ],
      child: const AudioVideoPlayerExample()));
}


