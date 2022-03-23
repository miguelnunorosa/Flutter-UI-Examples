import 'package:flutter/material.dart';
import 'package:movie_info_app/models/movie.dart';


class MovieBackdrop extends StatelessWidget {
  const MovieBackdrop({Key? key, required this.movie}) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.4 - 50,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(50)),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(movie.backdrop),
        ),
      ),
    );
  }
}
