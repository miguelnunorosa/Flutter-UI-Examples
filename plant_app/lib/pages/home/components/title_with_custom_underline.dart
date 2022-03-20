import 'package:flutter/material.dart';
import 'package:plant_app/settings/constants.dart';

class TitleWithCustomUnderline extends StatelessWidget {
  const TitleWithCustomUnderline({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: KDEFAULTPADDING / 4
            ),
            child: Text(text,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            bottom: 0, left: 0, right: 0,
            child: Container(
              margin: EdgeInsets.only( right: KDEFAULTPADDING / 4 ),
              height: 7,
              color: KPRIMARYCOLOR.withOpacity(0.2),
            ),
          ),
        ],
      ),
    );
  }
}