import 'package:flutter/material.dart';
import 'package:movie_info_app/components/genre_card.dart';
import 'package:movie_info_app/settings/constants.dart';


class Genres extends StatelessWidget {
  const Genres({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<String> genres = ["Action","Crime","Comedy","Drama","Horror","Animation"];

    return Container(
      margin: const EdgeInsets.symmetric(vertical: KDEFAULTPADDING / 2),
      height: 36,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: genres.length,
        itemBuilder: (context, index) => GenresCard(genre: genres[index],),
      ),
    );
  }
}



