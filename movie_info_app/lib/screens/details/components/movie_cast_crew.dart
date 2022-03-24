import 'package:flutter/material.dart';
import 'package:movie_info_app/components/cast_card.dart';
import 'package:movie_info_app/models/movie.dart';
import 'package:movie_info_app/settings/constants.dart';


class CrewAndCast extends StatelessWidget {
  const CrewAndCast({Key? key, required this.cast}) : super(key: key);

  final List cast;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(KDEFAULTPADDING),
      child: Column(
        children: [
          Text("Cast & Crew", style: Theme.of(context).textTheme.headline5),
          const SizedBox(height: KDEFAULTPADDING),
          SizedBox(
            height: 160,
            child: ListView.builder(
              itemCount: cast.length,
              itemBuilder: (context, index) => CastCard(cast: cast[index]),
              scrollDirection: Axis.horizontal,
            ),
          ),
          const SizedBox(height: KDEFAULTPADDING / 2),
          Text(cast['orginalName'],
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText2,
            maxLines: 2,
          ),
          const SizedBox(height: KDEFAULTPADDING / 4),
          Text(cast['movieName'],
            maxLines: 2,
            textAlign: TextAlign.center,
            style: const TextStyle(color: KTEXTLIGHTCOLOR),
          ),
        ],
      ),
    );
  }
}
