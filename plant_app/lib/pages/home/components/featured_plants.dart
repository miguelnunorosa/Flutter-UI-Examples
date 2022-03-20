import 'package:flutter/material.dart';
import 'featured_plant_card.dart';
import 'package:plant_app/settings/constants.dart';


class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturedPlantCard(
            image: IMG_BOTTOM_IMAGE1,
            press: (){},
          ),
          FeaturedPlantCard(
            image: IMG_BOTTOM_IMAGE2,
            press: (){},
          ),
        ],
      ),
    );
  }
}
