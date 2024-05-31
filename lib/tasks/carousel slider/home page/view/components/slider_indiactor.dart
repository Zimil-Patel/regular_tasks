import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:regular_tasks/utils/constants.dart';

import '../../provider/carousel_provider.dart';

class IndexIndicator extends StatelessWidget {
  const IndexIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    CarouselProvider providerTrue =
        Provider.of<CarouselProvider>(context, listen: true);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
          5,
          (index) => index == providerTrue.currentIndex
              ? TweenAnimationBuilder(
                  duration: const Duration(milliseconds: 200),
                  tween: Tween<double>(begin: 8, end: 40),
                  builder:
                      (BuildContext context, double value, Widget? child) =>
                          Container(
                    height: 8,
                    width: value,
                    margin: const EdgeInsets.symmetric(horizontal: 7),
                    decoration: BoxDecoration(
                      color: indicatorColorList[providerTrue.currentIndex],
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                )
              : Container(
                  height: 8,
                  width: 8,
                  margin: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: Colors.black,
                        width: 1.2),
                  ),
                ),
        ),
      ],
    );
  }
}
