import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:provider/provider.dart';
import 'package:regular_tasks/tasks/carousel%20slider/home%20page/view/components/quote_content_page.dart';

import '../../provider/carousel_provider.dart';

class CarouselSliderBox extends StatelessWidget {
  const CarouselSliderBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    CarouselProvider providerFalse =
        Provider.of<CarouselProvider>(context, listen: false);
    CarouselProvider providerTrue =
        Provider.of<CarouselProvider>(context, listen: true);

    return SizedBox(
      child: CarouselSlider.builder(
        itemCount: 5,
        itemBuilder: (context, index, realIndex) => QuoteContentPage(index: index, provider: providerTrue,),
        options: CarouselOptions(
          onPageChanged: (index, reason) => providerFalse.updateIndex(index),
          enableInfiniteScroll: false,
          enlargeCenterPage: true,
          aspectRatio: 0.8,
          disableCenter: true,
          reverse: false,
        ),
      ),
    );
  }
}
