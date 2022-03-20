import 'package:flutter/material.dart';
import 'package:plant_app/pages/details/components/icons_left_list.dart';
import 'package:plant_app/settings/constants.dart';


class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {

    Size _size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(
        bottom: KDEFAULTPADDING * 3,
      ),
      child: SizedBox(
        height: _size.height * 0.8,
        child: Row(
          children: [
            LeftIconsList(),
            Container(
              height: _size.height * 0.8,
              width: _size.width * 0.72,
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
    );
  }
}

