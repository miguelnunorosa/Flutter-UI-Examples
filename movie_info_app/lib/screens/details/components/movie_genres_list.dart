import 'package:flutter/material.dart';
import 'package:movie_info_app/components/genre_card.dart';
import 'package:movie_info_app/models/movie.dart';
import 'package:movie_info_app/settings/constants.dart';


class MovieGenres extends StatelessWidget {
  const MovieGenres({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: KDEFAULTPADDING / 2),
      child: SizedBox(
        height: 36,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: movie.gender.length,
            itemBuilder: (context, index) => GenresCard(genre: movie.gender[index])),
      ),
    );
  }
}
