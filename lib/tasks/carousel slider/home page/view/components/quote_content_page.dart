import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:regular_tasks/tasks/carousel%20slider/home%20page/provider/carousel_provider.dart';
import 'package:regular_tasks/utils/constants.dart';

class QuoteContentPage extends StatelessWidget {
  const QuoteContentPage({
    super.key,
    required this.index,
    required this.provider,
  });

  final int index;
  final CarouselProvider provider;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
          bottom: defaultPadding * 6,
          left: defaultPadding * 2,
          right: defaultPadding * 2),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          fit: BoxFit.cover,
          opacity: 0.9,
          image: AssetImage('assets/backgrounds/image${index + 1}.jpeg'),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 1.5,
            blurRadius: 8,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            provider.model.modelList[index].quote!,
            style: GoogleFonts.cinzel(
                textStyle: TextStyle(
              fontSize: MediaQuery.of(context).size.height * 0.035,
              color: Colors.white,
              fontWeight: FontWeight.w900,
            )),
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          Text(
            ' - ${provider.model.modelList[index].author!}',
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w800),
          )
        ],
      ),
    );
  }
}
