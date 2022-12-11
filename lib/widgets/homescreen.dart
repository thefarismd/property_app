import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  // const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'An App Related To Property.',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Card(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Discover',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          Row(
            children: const [Text('one'), Text('two')],
          )
        ],
      )),
    );
  }
}
