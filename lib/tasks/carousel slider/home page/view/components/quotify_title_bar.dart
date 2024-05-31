import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:regular_tasks/utils/constants.dart';

class QuotifyTitleBar extends StatelessWidget {
  const QuotifyTitleBar({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding, horizontal: defaultPadding * 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.search_rounded, size: height * 0.03,),
          const Spacer(),
          Text(
            'QUOTIFY',
            style: GoogleFonts.majorMonoDisplay(
              textStyle: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.03),
            ),
          ),
          const Spacer(),
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.035,
              child: Image.asset('assets/menu.png'))
        ],
      ),
    );
  }
}
