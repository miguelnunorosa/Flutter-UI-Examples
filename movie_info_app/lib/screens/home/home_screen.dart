import 'package:flutter/material.dart';
import 'package:movie_info_app/components/my_app_bar.dart';
import 'package:movie_info_app/screens/home/components/body.dart';
import 'package:movie_info_app/settings/constants.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: TopAppBar(appTitle: APP_TITLE),
      body: Body(),
    );
  }

}
