<div align = "center"> <h1> regular_tasks </h1> </div>

This repository contains Flutter Widget tasks

# Carousel Slider [📂 (source)](https://github.com/Zimil-Patel/regular_tasks/tree/main/lib/tasks/carousel%20slider)

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


# async_wallpaper [📂 (source)](https://github.com/Zimil-Patel/regular_tasks/tree/main/lib/tasks/async%20wallpaper)

#### Overview
`async_wallpaper` is a Flutter package for setting wallpapers asynchronously on Android devices. It supports static images and video live wallpapers.

#### Installation
Add to `pubspec.yaml`:
```yaml
dependencies:
  async_wallpaper: ^2.0.3
```
Install via command line:
```sh
flutter pub get
```
Import in Dart code:
```dart
import 'package:async_wallpaper/async_wallpaper.dart';
```

#### Usage
Set wallpaper from file:
```dart
await AsyncWallpaper.setWallpaperFromFile(
    filePath: 'path/to/file',
    wallpaperLocation: AsyncWallpaper.HOME_SCREEN,
    goToHome: true,
);
```
Set wallpaper from URL:
```dart
await AsyncWallpaper.setWallpaper(
    url: 'http://example.com/wallpaper.jpg',
    wallpaperLocation: AsyncWallpaper.HOME_SCREEN,
    goToHome: true,
);
```
Set live wallpaper from file:
```dart
await AsyncWallpaper.setLiveWallpaper(
    filePath: 'path/to/file.mp4',
    goToHome: true,
);
```

For more detailed usage and examples, visit the [package page on pub.dev](https://pub.dev/packages/async_wallpaper).

## Video Preview 🎥

https://github.com/Zimil-Patel/regular_tasks/assets/112332000/a808a4ad-07f3-4038-a993-c0a96d4b975d


# API Calling [📂 (source)](https://github.com/Zimil-Patel/regular_tasks/tree/main/lib/tasks/api%20calling)

### What is an API?

An Application Programming Interface (API) is a set of rules and protocols for building and interacting with software applications. It defines how requests and responses should be formatted, enabling different software systems to communicate with each other. APIs allow developers to access certain features or data of an application, service, or operating system without needing to understand the internal workings. Common types include web APIs, which use HTTP requests to fetch or modify data on remote servers.

### Making API Calls in Flutter using `http`

#### Setup
Add the `http` package to `pubspec.yaml`:
```yaml
dependencies:
  http: ^0.14.0
```
Install via command line:
```sh
flutter pub get
```
Import in Dart code:
```dart
import 'package:http/http.dart' as http;
```

#### Usage
**GET Request:**
```dart
Future<void> fetchData() async {
  final response = await http.get(Uri.parse('https://example.com/api/data'));
  if (response.statusCode == 200) {
    // Process response
    print(response.body);
  } else {
    // Handle error
    throw Exception('Failed to load data');
  }
}
```
```

#### Error Handling
Check status codes and use try-catch blocks for robust error handling.
```

## App Screenshots

<div align="left">

<img src= "https://github.com/Zimil-Patel/regular_tasks/blob/main/snaps/carousel/img1-portrait.png" height = 510 width = 240> &nbsp;&nbsp;&nbsp;&nbsp; <img src= "https://github.com/Zimil-Patel/regular_tasks/blob/main/snaps/carousel/img2-portrait.png" height = 510 width = 240> &nbsp;&nbsp;&nbsp;&nbsp; <img src= "https://github.com/Zimil-Patel/regular_tasks/blob/main/snaps/carousel/img3-portrait.png" height = 510 width = 240>

</div>

## Video Preview 🎥








