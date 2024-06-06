
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:regular_tasks/tasks/audio%20video%20player/home%20page/provider/audio_video_provider.dart';
import 'package:regular_tasks/utils/constants.dart';

class AudioPlayerIndicator extends StatelessWidget {
  const AudioPlayerIndicator({
    super.key,
    required this.providerTrue, required this.providerFalse,
  });

  final AudioVideoProvider providerTrue;
  final AudioVideoProvider providerFalse;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: BlurryContainer(
        blur: 2,
        color: Colors.white.withOpacity(0.4),
        borderRadius: BorderRadius.circular(16),
        child: SizedBox(
          height: height / 11,
          width: width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(width: defaultPadding * 2),
              Expanded(
                  flex: 7,
                  child: Text(
                    providerTrue.audioPlayer.getCurrentAudioTitle ??  'Not playing',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: height * 0.03,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  )),
              Expanded(
                flex: 1,
                child: CupertinoButton(
                  padding: EdgeInsets.zero,
                  onPressed: () async {
                    await providerFalse.togglePlayPause();
                    providerFalse.isPlaying();
                  },
                  child: Icon(
                    providerTrue.isPlayingAudio ? Icons.pause_rounded : Icons.play_arrow_rounded,
                    size: height * 0.055,
                    color: Colors.black.withOpacity(0.8),
                  ),
                ),
              ),
              const SizedBox(width: defaultPadding * 2),
              Expanded(
                flex: 1,
                child: CupertinoButton(
                  padding: EdgeInsets.zero,
                  onPressed: () async {
                    await providerFalse.playNext();
                    providerFalse.isPlaying();
                  },
                  child: Icon(
                    Icons.skip_next_rounded,
                    size: height * 0.06,
                    color: Colors.black.withOpacity(0.8),
                  ),
                ),
              ),
              const SizedBox(width: defaultPadding * 2)
            ],
          ),
        ),
      ),
    );
  }
}
