import 'package:flutter/material.dart';
import './discover.dart';

class HomeScreen extends StatelessWidget {
  // const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Welcome',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'robotobold',
            fontSize: 28,
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
    );
  }
}
