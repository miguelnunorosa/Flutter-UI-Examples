import 'package:flutter/material.dart';
import 'package:plant_app/pages/home/components/title_with_custom_underline.dart';
import 'package:plant_app/settings/constants.dart';


class TitleWithMoreButton extends StatelessWidget {
  const TitleWithMoreButton({
    Key? key, required this.title, required this.press,
  }) : super(key: key);

  final String title;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: KDEFAULTPADDING),
      child: Row(
        children: [
          TitleWithCustomUnderline(text: title),
          const Spacer(),
          FlatButton(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: KPRIMARYCOLOR,
            onPressed: press,
            child: const Text("More",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
