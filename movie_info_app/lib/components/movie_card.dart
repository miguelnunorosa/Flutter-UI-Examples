import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_info_app/models/movie.dart';
import 'package:movie_info_app/screens/details/details_screen.dart';
import 'package:movie_info_app/settings/constants.dart';


class MovieCard extends StatelessWidget {
  const MovieCard({
    Key? key,
    required this.movie
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: KDEFAULTPADDING),
      child: OpenContainer(
        closedElevation: 0,
        openElevation: 0,
        closedBuilder: (context, action) => buildMovieCard(context),
        openBuilder: (context, action) => DetailsScreen(movie: movie),
      ),
    );
  }

  Column buildMovieCard(BuildContext context) {
    return Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                boxShadow: [KDEFAULTSHADOW],
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(movie.poster),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: KDEFAULTPADDING / 2),
            child: Text(movie.title,
              style: Theme.of(context).textTheme.headline5?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(ICON_STAR_FILL, height: 20),
              const SizedBox(width: KDEFAULTPADDING / 2),
              Text("${movie.rating}", style: Theme.of(context).textTheme.bodyText2),
            ],
          ),
        ],
      );
  }
}
