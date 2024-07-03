import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BannerCarousel extends StatelessWidget {
  const BannerCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        Image.asset(
          'assets/banner/spider-man.jpg',
          fit: BoxFit.cover,
          width: double.infinity,
        ),
        Image.asset(
          'assets/banner/iron-man.jpg',
          fit: BoxFit.cover,
          width: double.infinity,
        ),
        Image.asset(
          'assets/banner/rick-and-morty.png',
          fit: BoxFit.cover,
          width: double.infinity,
        ),
      ],
      options: CarouselOptions(
        autoPlayInterval: const Duration(seconds: 3),
        autoPlay: true,
        viewportFraction: 1.0,
      ),
    );
  }
}
