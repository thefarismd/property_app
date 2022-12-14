import 'package:flutter/material.dart';

class CPFGrant extends StatelessWidget {
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
                'CPF Housing Grant',
                style: TextStyle(fontFamily: 'robotomedium', fontSize: 18),
              ),
              const SizedBox(
                height: 5,
              ), //adding spaces between columns
              const Text(
                'How much grant can i get.',
                style: TextStyle(fontFamily: 'robotolight', fontSize: 12),
              ),
              const SizedBox(
                height: 18,
              ),
              Center(
                child: Image.asset(
                  'assets/images/cpflogo.png',
                  scale: 10,
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              const Text(
                'Housing grant estimator.',
                style: TextStyle(fontFamily: 'robotolight', fontSize: 12),
              )
            ],
          ),
        ),
      ),
    );
  }
}
