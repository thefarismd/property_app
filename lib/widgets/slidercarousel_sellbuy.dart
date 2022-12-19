import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SellBuy extends StatelessWidget {
// SellBuy({Key key}) : super(key: key);

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
                'assets/images/sellbuy.png',
                scale: 9,
              ),
            ),
            const SizedBox(
              width: 13,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Sell → Buy',
                  style: TextStyle(fontFamily: 'opensans-bold', fontSize: 15),
                ),
                const Text(
                  'Timeline planning is complicated. \nSave the hassle. Let\'s sell high.',
                  style: TextStyle(
                    fontFamily: 'opensans-medium',
                    fontSize: 13,
                  ),
                ),
                InkWell(
                  onTap: () => launch('https://wa.me/6592274545'),
                  child: const Text(
                    'Let\'s connect',
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
