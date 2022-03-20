import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/pages/details/components/icon_card.dart';
import 'package:plant_app/settings/constants.dart';


class LeftIconsList extends StatelessWidget {
  const LeftIconsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: KDEFAULTPADDING * 3),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                padding: const EdgeInsets.symmetric(horizontal: KDEFAULTPADDING),
                icon: SvgPicture.asset(ICON_BACK_ARROW),
                onPressed: (){ Navigator.pop(context); },
              ),
            ),
            const Spacer(),
            const IconCard(icon: ICON_SUN),
            const IconCard(icon: ICON_ICON2),
            const IconCard(icon: ICON_ICON3),
            const IconCard(icon: ICON_ICON4),
          ],
        ),
      ),
    );
  }
}
