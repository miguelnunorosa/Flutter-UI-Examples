import 'package:flutter/material.dart';
import 'package:movie_info_app/settings/constants.dart';


class GenresCard extends StatelessWidget {
  const GenresCard({Key? key, required this.genre}) : super(key: key);

  final String genre;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: KDEFAULTPADDING),
      padding: const EdgeInsets.symmetric(
        horizontal: KDEFAULTPADDING,
        vertical: KDEFAULTPADDING / 4,
      ),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black26),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(genre,
        style: TextStyle(
          color: KTEXTCOLOR.withOpacity(0.8),
          fontSize: 16,
        ),
      ),
    );
  }
}