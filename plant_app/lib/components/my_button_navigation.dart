import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/settings/constants.dart';

class MyButtonNavBar extends StatelessWidget {
  const MyButtonNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: KDEFAULTPADDING * 2,
        right: KDEFAULTPADDING * 2,
        //bottom: KDEFAULTPADDING,
      ),
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -10),
            blurRadius: 35,
            color: KPRIMARYCOLOR.withOpacity(0.38),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: (){},
            icon: SvgPicture.asset(ICON_FLOWER),
          ),
          IconButton(
            onPressed: (){},
            icon: SvgPicture.asset(ICON_HEARTH),
          ),
          IconButton(
            onPressed: (){},
            icon: SvgPicture.asset(ICON_USER_ICON),
          ),
        ],
      ),
    );
  }
}
