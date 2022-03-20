import 'package:flutter/material.dart';
import 'package:plant_app/settings/constants.dart';


class FeaturedPlantCard extends StatelessWidget {
  const FeaturedPlantCard({
    Key? key, required this.image, required this.press,
  }) : super(key: key);

  final String image;
  final Function() press;

  @override
  Widget build(BuildContext context) {

    Size _size = MediaQuery.of(context).size; //get total height and width of our screen

    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.only(
          left: KDEFAULTPADDING,
          top: KDEFAULTPADDING / 2,
          bottom: KDEFAULTPADDING / 2,
        ),
        width: _size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
