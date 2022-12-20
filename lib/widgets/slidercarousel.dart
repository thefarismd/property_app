import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import './slidercarousel_sellbuy.dart';
import './slidercarousel_consultation.dart';
import './slidercarousel_buyec.dart';

class SliderCarousel extends StatefulWidget {
  @override
  State<SliderCarousel> createState() => _SliderCarouselState();
}

class _SliderCarouselState extends State<SliderCarousel> {
  // const MyWidget({Key key}) : super(key: key);

  int activeCardIndex = 0;

  Widget buildIndicator() {
    return AnimatedSmoothIndicator(
      activeIndex: activeCardIndex,
      count: 3,
      effect: const ScrollingDotsEffect(
        dotWidth: 7,
        dotHeight: 7,
        dotColor: Colors.grey,
        activeDotColor: Colors.black,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: [
            Consultation(),
            SellBuy(),
            BuyEC(),
          ],
          options: CarouselOptions(
            height: 100,
            viewportFraction: 1,
            autoPlayInterval: const Duration(seconds: 2),
            onPageChanged: (index, reason) {
              setState(() {
                activeCardIndex = index;
              });
            },
          ),
        ),
        // const SizedBox(height: 0.1),
        buildIndicator(),
      ],
    );
  }
}
