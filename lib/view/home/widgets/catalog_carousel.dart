import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselKatalog extends StatelessWidget {
  const CarouselKatalog({
    super.key,
    required this.imageList,
  });

  final List<String> imageList;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        enlargeCenterPage: false,
        enableInfiniteScroll: true,
        height: 163,
        aspectRatio: 16 / 9,
        scrollDirection: Axis.horizontal,
        // scrollPhysics: const NeverScrollableScrollPhysics(),
        viewportFraction: 0.8,
        pauseAutoPlayOnTouch: true,
        autoPlayAnimationDuration: const Duration(seconds: 1),
        autoPlay: true,
      ),
      itemCount: imageList.length,
      itemBuilder: (context, i, id) {
        return GestureDetector(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              imageList[i],
              width: 340,
              fit: BoxFit.contain,
            ),
          ),
          onTap: () {},
        );
      },
    );
  }
}
