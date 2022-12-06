import 'package:flutter/material.dart';
import './splashscreen.dart';

void main() {
  runApp(PropertyApp());
}

class PropertyApp extends StatelessWidget {
  // const MyWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Property App',
      // theme: ThemeData(primarySwatch: Colors.blue),
      home: SplashScreen(),
    );
  }
}
