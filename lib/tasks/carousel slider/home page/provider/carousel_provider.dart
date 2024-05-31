import 'package:flutter/material.dart';
import 'package:regular_tasks/tasks/carousel%20slider/home%20page/model/carousel_slider_model.dart';

class CarouselProvider extends ChangeNotifier{

  QuoteModel model = QuoteModel();
  int currentIndex = 0;

  CarouselProvider(){
    model.makeList();
  }

  void updateIndex(int index){
    currentIndex = index;
    notifyListeners();
  }

}