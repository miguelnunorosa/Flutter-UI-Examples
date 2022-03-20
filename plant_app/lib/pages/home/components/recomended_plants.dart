import 'package:flutter/material.dart';
import 'package:plant_app/settings/constants.dart';
import 'recomended_plant_card.dart';

class RecomendedPlants extends StatelessWidget {
  const RecomendedPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.only(
        left: KDEFAULTPADDING / 2,
        right: KDEFAULTPADDING,
      ),
      child: Row(
        children: [
          RecomendedPlantCard(
            title: "Samantha",
            country: "Portugal",
            image: IMG_IMAGE1,
            price: 110,
            press: (){},
          ),
          RecomendedPlantCard(
            title: "Angelica",
            country: "Italy",
            image: IMG_IMAGE2,
            price: 200,
            press: (){},
          ),
          RecomendedPlantCard(
            title: "OTPX",
            country: "Ukrain",
            image: IMG_IMAGE3,
            price: 310,
            press: (){},
          ),
        ],
      ),
    );
  }
}
