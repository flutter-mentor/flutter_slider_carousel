import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';

class SliderScreen extends StatelessWidget {
  List images = [
    'https://img2.goodfon.com/wallpaper/nbig/f/bd/egipet-pustyni-verbliudy-rassvety-i-zakaty-cairo-pesok.jpg',
    'https://i.pinimg.com/originals/7e/5d/b3/7e5db352f12c61fc95ada2515951dc90.jpg',
    'https://wallpaperaccess.com/full/2637581.jpg',
    'https://images.wallpapersden.com/image/download/4k-talking-to-the-moon_a2pubmuUmZqaraWkpJRobWllrWdma2U.jpg',
    'https://wallpaperaccess.com/full/300506.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Carousel Slider'),
        elevation: 0,
      ),
      body: Container(
        child: CarouselSlider.builder(
          slideIndicator: CircularSlideIndicator(
            padding: EdgeInsets.all(20),
            currentIndicatorColor: Colors.red,
            indicatorBackgroundColor: Colors.black,
            indicatorBorderColor: Colors.white,
          ),
          slideTransform: StackTransform(),
          initialPage: 0,
          enableAutoSlider: true,
          itemCount: images.length,
          slideBuilder: (index) => Container(
            child: Image(
              fit: BoxFit.cover,
              image: NetworkImage(images[index]),
            ),
          ),
        ),
      ),
    );
  }
}
