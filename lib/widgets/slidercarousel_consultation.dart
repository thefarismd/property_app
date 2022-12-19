import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Consultation extends StatelessWidget {
// Consultation({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        elevation: 0,
        child: Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                'assets/images/appointment.png',
                scale: 10,
              ),
            ),
            const SizedBox(
              width: 13,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Free Consultation',
                  style: TextStyle(fontFamily: 'opensans-bold', fontSize: 15),
                ),
                const Text(
                  'You have special cases, that needs to be \naddressed. Let me help.',
                  style: TextStyle(
                    fontFamily: 'opensans-medium',
                    fontSize: 13,
                  ),
                ),
                InkWell(
                  onTap: () => launch('https://wa.me/6592274545'),
                  child: const Text(
                    'Book an appointment',
                    style: TextStyle(
                        fontFamily: 'opensans-medium',
                        fontSize: 13,
                        decoration: TextDecoration.underline,
                        color: Colors.blue),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
