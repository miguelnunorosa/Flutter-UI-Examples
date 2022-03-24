import 'package:flutter/material.dart';
import 'package:movie_info_app/components/genre_card.dart';
import 'package:movie_info_app/models/movie.dart';
import 'package:movie_info_app/screens/details/components/movie_backdrop.dart';
import 'package:movie_info_app/screens/details/components/movie_cast_crew.dart';
import 'package:movie_info_app/screens/details/components/movie_genres_list.dart';
import 'package:movie_info_app/screens/details/components/movie_info.dart';
import 'package:movie_info_app/screens/details/components/movie_plot.dart';
import 'package:movie_info_app/screens/details/components/movie_rating.dart';
import 'package:movie_info_app/settings/constants.dart';


class Body extends StatelessWidget {
  const Body({Key? key, required this.movie}) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: size.height * 0.4, //40% of total screen height
          child: Stack(
            children: [
              MovieBackdrop(movie: movie),
              MovieRating(movie: movie),
              const SafeArea(child: BackButton()),
            ],
          ),
        ),
        const SizedBox(height: KDEFAULTPADDING),
        MovieInfo(movie: movie),
        MovieGenres(movie: movie),
        MoviePlot(movie: movie),
        CrewAndCast(movie: movie),
      ],
    );
  }
}

