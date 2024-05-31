import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:regular_tasks/tasks/carousel%20slider/home%20page/view/components/slider_indiactor.dart';
import 'package:regular_tasks/utils/constants.dart';
import '../provider/carousel_provider.dart';
import 'components/carousel_slider_box.dart';
import 'components/quotify_title_bar.dart';
import 'components/your_feed_bottom_bar.dart';

class CarouselSliderHomePage extends StatelessWidget {
  const CarouselSliderHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    CarouselProvider providerTrue = Provider.of<CarouselProvider>(context, listen: true);
    CarouselProvider providerFalse = Provider.of<CarouselProvider>(context, listen: false);

    return Scaffold(
      body: Container(
        width: width,
        // CONTAINER DECORATION
        decoration: BoxDecoration(
          gradient: gradientList[providerTrue.currentIndex],
        ),
        child: Column(
          children: [
            Expanded(
              child: SizedBox(
                width: width,
                child: SafeArea(
                  child: Column(
                    children: [
                      // APP BAR
                      QuotifyTitleBar(height: height),

                      const Spacer(),

                      // Slider Box
                      const Column(
                        children: [
                          CarouselSliderBox(),

                          SizedBox(
                            height: defaultPadding * 2,
                          ),

                          // INDEX INDICATOR
                          IndexIndicator(),
                        ],
                      ),

                      const Spacer(),
                    ],
                  ),
                ),
              ),
            ),

            // BOTTOM BAR
            YourFeedBottomBar(width: width),

          ],
        ),
      ),
    );
  }
}
