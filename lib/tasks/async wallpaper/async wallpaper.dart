import 'package:flutter/material.dart';
import 'home page/view/async_wallpaper_home_page.dart';

class AsyncWallpaperExample extends StatelessWidget {
  const AsyncWallpaperExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      home: const AsyncWallpaperHomepage(),
    );
  }
}
