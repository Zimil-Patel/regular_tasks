
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:regular_tasks/tasks/audio%20video%20player/home%20page/provider/audio_video_provider.dart';
import 'package:regular_tasks/tasks/audio%20video%20player/home%20page/view/components/video_player_indicator.dart';
import 'package:regular_tasks/utils/constants.dart';

import 'components/audio_player_indicator.dart';

class AudioVideoPlayerHomePage extends StatefulWidget {
  const AudioVideoPlayerHomePage({super.key});

  @override
  State<AudioVideoPlayerHomePage> createState() => _AudioVideoPlayerHomePageState();
}

class _AudioVideoPlayerHomePageState extends State<AudioVideoPlayerHomePage> {

  @override
  void initState() {
    final providerFalse = context.read<AudioVideoProvider>();
    providerFalse.initialiseControllers();
    super.initState();
  }

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

