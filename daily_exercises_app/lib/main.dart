import 'package:daily_exercises_app/settings/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: "Cairo",
          scaffoldBackgroundColor: KBACKGROUNDCOLOR,
          textTheme: Theme.of(context).textTheme.apply(displayColor: KTEXTCOLOR),
        ),
      home: const HomeScreen()
    );
  }
}



class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var _screenSize = MediaQuery.of(context).size; //get screen (height and width) size

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: _screenSize.height * .45, //container height is 45% of total screen size
            decoration: const BoxDecoration(
              color: KMAINHEADERCOLOR,
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage(IMAGE_CLOUD),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
