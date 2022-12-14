import 'package:flutter/material.dart';

class HDBLoan extends StatelessWidget {
  // const MyWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 300,
      width: 200,
      child: Card(
        elevation: 7,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(14))),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'HDB Loan',
                style: TextStyle(fontFamily: 'robotomedium', fontSize: 18),
              ),
              const SizedBox(
                height: 5,
              ), //adding spaces between columns
              const Text(
                'What\'s my quantum.',
                style: TextStyle(fontFamily: 'robotolight', fontSize: 12),
              ),
              const SizedBox(
                height: 27,
              ),
              Center(
                child: Image.asset(
                  'assets/images/hdblogo.png',
                  scale: 2.5,
                ),
              ),
              const SizedBox(
                height: 27,
              ),
              const Text(
                'HLE estimates.',
                style: TextStyle(fontFamily: 'robotolight', fontSize: 12),
              )
            ],
          ),
        ),
      ),
    );
  }
}
