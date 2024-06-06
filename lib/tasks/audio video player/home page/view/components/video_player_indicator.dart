import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants.dart';
import '../../provider/audio_video_provider.dart';

class VideoPlayerIndicator extends StatelessWidget {
  const VideoPlayerIndicator({super.key, required this.providerTrue, required this.providerFalse});
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
        child: AspectRatio(
          aspectRatio: 2,
          child: Container(
            width: width,
            alignment: Alignment.center,
            child: providerTrue.isVideoPlaying ? Chewie(
              controller: providerTrue.chewieController,
            ) : Stack(
              children: [
                Center(child: Image.asset('assets/bigbuckbunny.png', fit: BoxFit.cover,)),
                Center(
                  child: CupertinoButton(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(100),
                    padding: EdgeInsets.zero,
                    onPressed: () async {
                      await providerFalse.playVideo();
                    },
                    child: Icon(Icons.play_arrow_rounded, color: Colors.white, size: height * 0.08,),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
