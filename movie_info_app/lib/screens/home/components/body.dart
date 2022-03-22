import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_info_app/screens/home/components/categories.dart';
import 'package:movie_info_app/screens/home/components/genres.dart';
import 'package:movie_info_app/screens/home/components/movie_carousel.dart';
import 'package:movie_info_app/settings/constants.dart';


class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: const [
          CategoryList(),
          Genres(),
          SizedBox(height: KDEFAULTPADDING),
          MovieCarousel(),
        ],
      ),
    );
  }
}







