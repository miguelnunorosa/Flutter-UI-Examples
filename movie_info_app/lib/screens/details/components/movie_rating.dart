import 'package:flutter/material.dart';
import 'package:movie_info_app/models/movie.dart';
import 'package:movie_info_app/settings/constants.dart';



class MovieRating extends StatelessWidget {
  const MovieRating({Key? key, required this.movie}) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Positioned(
      bottom: 0, right: 0,
      child: Container(
        width: size.width * 0.9, //get 90% of total width
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50), topLeft: Radius.circular(50)),
          boxShadow: [BoxShadow(
              offset: Offset(0, 5),
              blurRadius: 50,
            color: KTEXTCOLOR.withOpacity(0.2),
          ),
          ]
        ),
      ),
    );
  }
}
