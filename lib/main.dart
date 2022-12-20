import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io' show Platform;
import './widgets/splashscreen.dart';

void main() {
  runApp(PropertyApp());
}

class PropertyApp extends StatelessWidget {
  // const MyWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Platform.isAndroid
        ? MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primaryColor: Colors.white70,
            ),
            // title: 'Property App',
            home: SplashScreen(),
          )
        : CupertinoApp(
            debugShowCheckedModeBanner: false,
            theme: const CupertinoThemeData(
              brightness: Brightness.light,
              primaryColor: Colors.white,
            ),
            home: SplashScreen(),
          );
  }
}
