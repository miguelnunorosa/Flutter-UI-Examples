import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/components/my_button_navigation.dart';
import 'package:plant_app/pages/home/components/body.dart';
import 'package:plant_app/settings/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: MyButtonNavBar(),
    );
  }


  AppBar buildAppBar() {

    return AppBar(
      backgroundColor: KPRIMARYCOLOR,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(ICON_MENU),
        onPressed: (){},
      ),
      title: const Text("Plants"),
    );
  }
}



