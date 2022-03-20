import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app/pages/details/components/icon_card.dart';
import 'package:plant_app/settings/constants.dart';


class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        SizedBox(
          height: size.height * 0.8,
          child: Row(
            children: [
              Expanded(
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
                      const IconCard(),
                    ],
                  ),
                ),
              ),
              Container(
                height: size.height * 0.8,
                width: size.width * 0.72,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(63),
                    bottomLeft: Radius.circular(63),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 10),
                      blurRadius: 50,
                      color: KPRIMARYCOLOR.withOpacity(0.29),
                    ),
                  ],
                  image: const DecorationImage(
                    alignment: Alignment.centerLeft,
                    fit: BoxFit.cover,
                    image: AssetImage(IMG_IMAGE),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}


