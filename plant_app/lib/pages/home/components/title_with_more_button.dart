import 'package:flutter/material.dart';
import 'package:plant_app/pages/home/components/title_with_custom_underline.dart';
import 'package:plant_app/settings/constants.dart';


class TitleWithMoreButton extends StatelessWidget {
  const TitleWithMoreButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: KDEFAULTPADDING),
      child: Row(
        children: [
          TitleWithCustomUnderline(text: 'Recomended'),
          Spacer(),
          FlatButton(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: KPRIMARYCOLOR,
            onPressed: (){},
            child: Text("More",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
