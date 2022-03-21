import 'package:flutter/material.dart';
import 'package:movie_info_app/screens/home/components/categories.dart';
import 'package:movie_info_app/screens/home/components/genres.dart';


class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CategoryList(),
        Genres(),
      ],
    );
  }
}


