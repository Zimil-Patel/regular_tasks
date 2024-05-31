import 'package:flutter/material.dart';

const double defaultPadding = 10;

const List quoteList = [
  {
    "quote":
        "The best way to cheer yourself up is to try to cheer somebody else up.",
    "author": "Mark Twain"
  },
  {
    "quote":
        "Happiness is not something ready made. It comes from your own actions.",
    "author": "Dalai Lama"
  },
  {
    "quote":
        "The only thing that will make you happy is being happy with who you are.",
    "author": "Goldie Hawn"
  },
  {
    "quote":
        "Count your age by friends, not years. Count your life by smiles, not tears.",
    "author": "John Lennon"
  },
  {
    "quote": "Happiness is a warm puppy.",
    "author": "Charles M. Schulz",
  },
];

const List<Gradient> gradientList = [
  // Light Blue Gradient
  LinearGradient(
    colors: [
      Color(0xFFE0F7FA), // Light Cyan
      Color(0xFFB2EBF2), // Pale Cyan
      Color(0xFF80DEEA), // Aqua
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  ),

  // Light Pink Gradient
  LinearGradient(
    colors: [
      Color(0xFFFCE4EC), // Light Pink
      Color(0xFFF8BBD0), // Pink
      Color(0xFFF48FB1), // Pale Pink
    ],
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
  ),

  // Light Purple Gradient
  LinearGradient(
    colors: [
      Color(0xFFEDE7F6), // Lavender
      Color(0xFFD1C4E9), // Mauve
      Color(0xFFB39DDB), // Light Purple
    ],
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
  ),

  // Light Green Gradient
  LinearGradient(
    colors: [
      Color(0xFFE8F5E9), // Honeydew
      Color(0xFFC8E6C9), // Mint
      Color(0xFFA5D6A7), // Pale Green
    ],
    begin: Alignment.bottomRight,
    end: Alignment.topLeft,
  ),

  // Light Orange Gradient
  LinearGradient(
    colors: [
      Color(0xFFFFF3E0), // Peach
      Color(0xFFFFE0B2), // Light Apricot
      Color(0xFFFFCC80), // Light Orange
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  ),

];

const List<Color> indicatorColorList = [
  Colors.blue,
  Colors.pink,
  Colors.purple,
  Colors.green,
  Colors.orange,
];
