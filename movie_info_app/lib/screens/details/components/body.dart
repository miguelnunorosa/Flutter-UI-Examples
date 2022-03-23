import 'package:flutter/material.dart';
import 'package:movie_info_app/models/movie.dart';
import 'package:movie_info_app/screens/details/components/movie_backdrop.dart';
import 'package:movie_info_app/screens/details/components/movie_rating.dart';


class Body extends StatelessWidget {
  const Body({Key? key, required this.movie}) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Container(
          height: size.height * 0.4, //40% of total screen height
          child: Stack(
            children: [
              MovieBackdrop(movie: movie),
              MovieRating(movie: movie),
              SafeArea(child: BackButton()),
            ],
          ),
        ),
      ],
    );
  }
}
