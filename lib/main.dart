import 'package:flutter/material.dart';
import './widgets/splashscreen.dart';

void main() {
  runApp(PropertyApp());
}

class PropertyApp extends StatelessWidget {
  // const MyWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white70,
      ),
      // title: 'Property App',
      home: SplashScreen(),
    );
  }
}
