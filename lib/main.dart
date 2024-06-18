import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:regular_tasks/tasks/api%20calling/api_calling_example.dart';
import 'package:regular_tasks/tasks/api%20calling/pages/pixabay%20api/provider/pixabary_provider.dart';
import 'package:regular_tasks/tasks/api%20calling/pages/posts%20api/provider/post_api_provider.dart';
import 'package:regular_tasks/tasks/api%20calling/pages/users%20api/home%20page/provider/user_api_provider.dart';
import 'package:regular_tasks/tasks/async%20wallpaper/home%20page/provider/wallpaper_provider.dart';
import 'package:regular_tasks/tasks/audio%20video%20player/home%20page/provider/audio_video_provider.dart';
import 'package:regular_tasks/tasks/carousel%20slider/home%20page/provider/carousel_provider.dart';


// CarouselSliderExample()
// AudioVideoPlayerExample()
// AsyncWallpaperExample()
// ApiCallingExample()


void main(){
  WidgetsFlutterBinding.ensureInitialized();
  UserApiProvider userApiProvider = UserApiProvider();
  PostApiProvider postApiProvider = PostApiProvider();
  PixabayProvider pixabayProvider = PixabayProvider();

  runApp(MultiProvider(

      providers: [
        ChangeNotifierProvider(create: (context) => CarouselProvider()),
        ChangeNotifierProvider(create: (context) => AudioVideoProvider()),
        ChangeNotifierProvider(create: (context) => WallpaperProvider()),
        ChangeNotifierProvider(create: (context) => userApiProvider),
        ChangeNotifierProvider(create: (context) => postApiProvider),
        ChangeNotifierProvider(create: (context) => pixabayProvider),
      ],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      home: const ApiCallingExample(),
    );
  }
}


