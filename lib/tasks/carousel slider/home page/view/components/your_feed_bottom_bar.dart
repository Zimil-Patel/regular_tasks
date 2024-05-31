import 'package:flutter/material.dart';
import 'package:regular_tasks/utils/constants.dart';

class YourFeedBottomBar extends StatelessWidget {
  const YourFeedBottomBar({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: width,
      padding: const EdgeInsets.symmetric(
          vertical: defaultPadding * 2, horizontal: defaultPadding * 2),
      decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Your Feed',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.w800, color: Colors.white),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Text(
            '"Get inspired daily with a diverse collection of quotes that uplift, motivate, and enlighten."',
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
