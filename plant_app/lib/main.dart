import 'package:flutter/material.dart';
import 'settings/constants.dart';
import 'pages/home/home_screen.dart';

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
      title: 'Plant App',
      theme: ThemeData(
        primaryColor: KPRIMARYCOLOR,
        scaffoldBackgroundColor: KBACKGROUNDCOLOR,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: KTEXTCOLOR),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomeScreen(),
    );
  }
}

