import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:property_app/widgets/slidercarousel.dart';
import 'dart:io' show Platform;
import 'widgets/discover.dart';

class HomeScreen extends StatelessWidget {
  // const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Platform.isAndroid
        ? Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: const Text(
                'Welcome',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'opensans-bold',
                  fontSize: 29,
                ),
              ),
            ),
            body: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    Discover(),
                  ],
                )),
          )
        : CupertinoPageScaffold(
            backgroundColor: CupertinoColors.white,
            child: CustomScrollView(
              slivers: [
                CupertinoSliverNavigationBar(
                  backgroundColor: CupertinoColors.systemGrey.withOpacity(0.1),
                  // border: Border.all(style: BorderStyle.none),
                  largeTitle: const Text(
                    'Welcome.',
                    style: TextStyle(fontFamily: 'opensans-bold'),
                  ),
                ),
                SliverFillRemaining(
                  child: Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 7,
                        ),
                        SliderCarousel(),
                        const SizedBox(height: 5),
                        Discover(),
                      ],
                    ),
                  ),
                )
              ],
            ));
  }
}
