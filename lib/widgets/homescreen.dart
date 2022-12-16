import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;
import './discover.dart';

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
            backgroundColor: Colors.white,
            navigationBar: const CupertinoNavigationBar(
              middle: Text(
                'Welcome',
                style: TextStyle(fontSize: 29, fontFamily: 'opensans-bold'),
              ),
            ),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(7.0),
                child: Column(
                  children: [
                    Discover(),
                  ],
                ),
              ),
            ));
  }
}
