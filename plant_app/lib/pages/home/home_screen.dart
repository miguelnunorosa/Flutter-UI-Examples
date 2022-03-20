import 'package:flutter/material.dart';
import 'package:plant_app/components/my_appbar.dart';
import 'package:plant_app/components/my_button_navigation.dart';
import 'package:plant_app/pages/home/components/body.dart';
import 'package:plant_app/settings/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(appTitle: APPTITLE),
      body: Body(),
      bottomNavigationBar: MyButtonNavBar(),
    );
  }

}



