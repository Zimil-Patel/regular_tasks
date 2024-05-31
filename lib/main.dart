import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:regular_tasks/tasks/carousel%20slider/carousel_slider_example.dart';
import 'package:regular_tasks/tasks/carousel%20slider/home%20page/provider/carousel_provider.dart';

void main(){
  runApp(MultiProvider(

      providers: [
        ChangeNotifierProvider(create: (context) => CarouselProvider()),
      ],
      child: const CarouselSliderExample()));
}


