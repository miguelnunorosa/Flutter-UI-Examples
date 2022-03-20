import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/pages/home/components/header_with_searchbox.dart';
import 'package:plant_app/pages/home/components/title_with_custom_underline.dart';
import 'package:plant_app/pages/home/components/title_with_more_button.dart';
import 'package:plant_app/settings/constants.dart';


class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //get total height and width of our screen

    return SingleChildScrollView( //allow scroll on small devices
      child: Column(
        children: [
          headerWithSearch(size: size),
          TitleWithMoreButton(),
        ],
      ),
    );
  }
}


