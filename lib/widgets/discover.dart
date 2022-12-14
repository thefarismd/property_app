import 'package:flutter/material.dart';
import './discover_cpfgrant.dart';
import './discover_hdbloan.dart';

class Discover extends StatelessWidget {
  // const MyWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Discover',
          style: TextStyle(
            fontFamily: 'opensans-bold',
            fontSize: 30,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          height: 265,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              CPFGrant(),
              HDBLoan(),
              CPFGrant(),
            ],
          ),
        )
      ],
    );
  }
}
