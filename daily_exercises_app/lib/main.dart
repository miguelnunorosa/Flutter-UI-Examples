import 'package:daily_exercises_app/settings/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meditation App',
      theme: ThemeData(
        fontFamily: "Cairo",
        scaffoldBackgroundColor: KBACKGROUNDCOLOR,
        textTheme: Theme.of(context).textTheme.apply(displayColor: KTEXTCOLOR),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size; //get screen size (height and width)
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: _size.height * .45, //45% of total screen height size
            decoration: const BoxDecoration(
              color: KMAINHEADERCOLOR,
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage("assets/images/undraw_pilates_gpdb.png"),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 52,
                      width: 52,
                      decoration: const BoxDecoration(
                        color: KHEADERMENUICON,
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset("assets/icons/menu.svg"),
                    ),
                  ),
                  Text("Good Morning \nMike!",
                    style: Theme.of(context).textTheme.headline4?.copyWith(fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}