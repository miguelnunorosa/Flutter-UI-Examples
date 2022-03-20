import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/settings/constants.dart';

class IconCard extends StatelessWidget {
  const IconCard({
    Key? key, required this.icon,
  }) : super(key: key);

  final String icon;

  @override
  Widget build(BuildContext context) {

    Size _size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(vertical: _size.height * 0.03),
      padding: const EdgeInsets.all(KDEFAULTPADDING / 2),
      height: 62,
      width: 62,
      decoration: BoxDecoration(
        color: KBACKGROUNDCOLOR,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 15),
            blurRadius: 22,
            color: KPRIMARYCOLOR.withOpacity(0.22),
          ),
          const BoxShadow(
            offset: Offset(-15, -15),
            blurRadius: 20,
            color: Colors.white,
          ),
        ],
      ),
      child: SvgPicture.asset(icon),
    );
  }
}
