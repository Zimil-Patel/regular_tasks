import 'package:flutter/material.dart';
import 'package:regular_tasks/tasks/carousel%20slider/home%20page/view/carousel_slider_home_page.dart';

class CarouselSliderExample extends StatelessWidget {
  const CarouselSliderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CarouselSliderHomePage(),
    );
  }
}
