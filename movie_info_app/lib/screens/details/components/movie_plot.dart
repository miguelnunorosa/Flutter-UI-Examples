import 'package:flutter/material.dart';
import 'package:movie_info_app/models/movie.dart';
import 'package:movie_info_app/settings/constants.dart';


class MoviePlot extends StatelessWidget {
  const MoviePlot({Key? key, required this.movie}) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
              vertical: KDEFAULTPADDING / 2,
              horizontal: KDEFAULTPADDING),
          child: Text("Plot Summary",
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: KDEFAULTPADDING),
          child: Text(movie.plot,
              style: const TextStyle(color: Color(0xFF737599))),
        ),
      ],
    );
  }
}
