import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:video_player/video_player.dart';

class AudioVideoProvider extends ChangeNotifier {
  bool isPlayingAudio = false;
  late AssetsAudioPlayer audioPlayer;
  late VideoPlayerController videoPlayer;
  late ChewieController chewieController;
  bool isVideoPlaying = false;

  // PLAY PAUSE AUDIOS
  Future<void> togglePlayPause() async {
    await audioPlayer.playOrPause();
  }

  // IS AUDIO PLAYING
  void isPlaying() {
    audioPlayer.isPlaying.listen((value) {
      isPlayingAudio = value;
    });
    notifyListeners();
  }

  // IS PLAYING NEXT
  Future<void> playNext() async {
    await audioPlayer.next();
  }

  // PLAY VIDEO
  Future<void> playVideo() async {
    await videoPlayer.play();
    isVideoPlaying = true;
    notifyListeners();
  }

  void initialiseControllers() {
    audioPlayer = AssetsAudioPlayer()..open(
      autoStart: false,
      Playlist().addAll([
        Audio('assets/audios/the_nights.mp3',
            metas: Metas(title: 'The Nights')),
        Audio('assets/audios/thousand_years.mp3',
            metas: Metas(title: 'Thousand Years')),
      ]),
    );

    videoPlayer = VideoPlayerController.networkUrl(
      Uri.parse(
          'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4'),
    )..initialize()..setVolume(0);

    chewieController = ChewieController(videoPlayerController: videoPlayer, autoPlay: false);
  }
}
