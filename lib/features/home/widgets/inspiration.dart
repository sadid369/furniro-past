import 'package:flutter/material.dart';
import 'package:furniro/common/utils/constants.dart';

class Inspiration extends StatefulWidget {
  const Inspiration({Key? key}) : super(key: key);

  @override
  _InspirationState createState() => _InspirationState();
}

class _InspirationState extends State<Inspiration> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: w! * 0.7,
      height: h! * .7,
      decoration: BoxDecoration(
          border: Border.all(
        color: Colors.black,
      )),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '50+ Beautiful rooms\ninspiration',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
