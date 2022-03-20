import 'package:flutter/material.dart';
import 'package:plant_app/pages/home/components/header_with_searchbox.dart';
import 'package:plant_app/pages/home/components/recomended_plants.dart';
import 'package:plant_app/pages/home/components/title_with_more_button.dart';


class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //get total height and width of our screen

    return SingleChildScrollView( //allow scroll on small devices
      child: Column(
        children: [
          headerWithSearch(size: size),
          TitleWithMoreButton(title: "Recomended", press: (){}),
          RecomendedPlants(),
        ],
      ),
    );
  }
}





