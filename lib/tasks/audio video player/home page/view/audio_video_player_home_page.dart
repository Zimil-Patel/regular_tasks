
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:regular_tasks/tasks/audio%20video%20player/home%20page/provider/audio_video_provider.dart';
import 'package:regular_tasks/tasks/audio%20video%20player/home%20page/view/components/video_player_indicator.dart';
import 'package:regular_tasks/utils/constants.dart';
import 'package:video_player/video_player.dart';

import 'components/audio_player_indicator.dart';

class AudioVideoPlayerHomePage extends StatelessWidget {
  const AudioVideoPlayerHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    final providerTrue = context.watch<AudioVideoProvider>();
    final providerFalse = context.read<AudioVideoProvider>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Audio Video Player'),
      ),
      body: Container(
        height: height,
        width: width,
        decoration: const BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/backgrounds/image3.jpeg'),
        )),
        child: Column(
          children: [
            // AUDIO PLAYER
            AudioPlayerIndicator(providerTrue: providerTrue, providerFalse: providerFalse,),

            // VIDEO PLAYER
            VideoPlayerIndicator(providerTrue: providerTrue, providerFalse: providerFalse,),
          ],
        ),
      ),
    );
  }
}

