import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';

class SlidingImageCarousel extends StatelessWidget {
  final List<String> imgPaths;
  const SlidingImageCarousel({
    super.key,
    required GlobalKey<State<StatefulWidget>> sliderKey,
    required this.imgPaths,
  }) : _sliderKey = sliderKey;

  final GlobalKey<State<StatefulWidget>> _sliderKey;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 8.0, top: 8.0),
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            height: 200,
            child: CarouselSlider.builder(
                enableAutoSlider: true,
                key: _sliderKey,
                unlimitedMode: true,
                slideBuilder: (index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(imgPaths[index], fit: BoxFit.cover)),
                  );
                },
                slideIndicator: CircularSlideIndicator(
                  padding: const EdgeInsets.only(bottom: 10),
                ),
                itemCount: 5)));
  }
}
