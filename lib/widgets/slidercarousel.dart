import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import './slidercarousel_sellbuy.dart';
import './slidercarousel_consultation.dart';
import './slidercarousel_buyec.dart';

class SliderCarousel extends StatelessWidget {
  // const MyWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        Consultation(),
        SellBuy(),
        BuyEC(),
      ],
      options: CarouselOptions(
        height: 100,
        viewportFraction: 1,
        autoPlayInterval: const Duration(seconds: 2),
      ),
    );
  }
}
