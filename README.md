<div align = "center"> <h1> regular_tasks </h1> </div>

This repository contains Flutter Widget tasks

# Carousel Slider

A Flutter carousel slider widget, perfect for showcasing images, texts, or any custom widgets with various configuration options.

## Features

- Supports infinite scrolling.
- Auto-playing of slides.
- Customizable indicators.
- Multiple item layouts (standard, coverflow, stack, etc.).
- Vertical and horizontal scroll directions.
- Gesture detection (drag, swipe).

## Installation

Add the dependency to your `pubspec.yaml`:

```yaml
dependencies:
  carousel_slider: ^4.0.0
```

## Usage

### Basic Example

```dart
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

CarouselSlider(
  options: CarouselOptions(height: 400.0),
  items: [1,2,3,4,5].map((i) {
    return Builder(
            builder: (BuildContext context) {
              return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          color: Colors.amber
                        ),
                        child: Text('text $i', style: TextStyle(fontSize: 16.0),)
                    );
            },
    );
  }).toList(),
)
```


### Carousel Options

Customize the carousel using `CarouselOptions`:

```dart
CarouselOptions(
  height: 400,
  aspectRatio: 16/9,
  viewportFraction: 0.8,
  initialPage: 0,
  enableInfiniteScroll: true,
  reverse: false,
  autoPlay: false,
  autoPlayInterval: Duration(seconds: 3),
  autoPlayAnimationDuration: Duration(milliseconds: 800),
  autoPlayCurve: Curves.fastOutSlowIn,
  enlargeCenterPage: true,
  onPageChanged: callbackFunction,
  scrollDirection: Axis.horizontal,
)
```

This documentation provides a quick overview and usage examples to help get started with the `carousel_slider` package. For more details, refer to the [official package documentation](https://pub.dev/packages/carousel_slider).

## App Screenshots

### Dark Theme

<div align="left">

<img src= "https://github.com/Zimil-Patel/regular_tasks/blob/main/snaps/carousel/img1-portrait.png" height = 510 width = 240> &nbsp;&nbsp;&nbsp;&nbsp; <img src= "https://github.com/Zimil-Patel/regular_tasks/blob/main/snaps/carousel/img2-portrait.png" height = 510 width = 240> &nbsp;&nbsp;&nbsp;&nbsp; <img src= "https://github.com/Zimil-Patel/regular_tasks/blob/main/snaps/carousel/img3-portrait.png" height = 510 width = 240>

<img src= "https://github.com/Zimil-Patel/regular_tasks/blob/main/snaps/carousel/img4-portrait.png" height = 510 width = 240> &nbsp;&nbsp;&nbsp;&nbsp; <img src= "https://github.com/Zimil-Patel/regular_tasks/blob/main/snaps/carousel/img5-portrait.png" height = 510 width = 240> &nbsp;&nbsp;&nbsp;&nbsp;

</div>


## Video Preview 🎥


https://github.com/Zimil-Patel/regular_tasks/assets/112332000/b8bb3935-9c23-4a64-8401-d35af656910e

