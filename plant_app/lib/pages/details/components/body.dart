import 'package:flutter/material.dart';
import 'package:plant_app/pages/details/components/image_and_icons.dart';
import 'package:plant_app/pages/details/components/name_and_price.dart';
import 'package:plant_app/settings/constants.dart';


class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcons(),
          NameAndPrice(name: "Samantha", country: "Portugal", price: 222),
        ],
      ),
    );
  }
}




