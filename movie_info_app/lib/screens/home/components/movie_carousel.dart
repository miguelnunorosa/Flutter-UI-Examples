import 'package:flutter/material.dart';
import 'package:movie_info_app/components/movie_card.dart';
import 'package:movie_info_app/models/movie.dart';
import 'package:movie_info_app/settings/constants.dart';


class MovieCarousel extends StatefulWidget {
  const MovieCarousel({Key? key}) : super(key: key);

  @override
  State<MovieCarousel> createState() => _MovieCarouselState();
}

class _MovieCarouselState extends State<MovieCarousel> {

  late PageController _pageController;
  int initialPage = 1;

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);

    _pageController = PageController();
  }


  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: KDEFAULTPADDING),
      child: AspectRatio(
        aspectRatio: 0.85,
        child: PageView.builder(
          itemCount: movies.length,
          /*itemBuilder: (context, index) => Container(
            margin: EdgeInsets.all(10),
            color: Colors.blueAccent,
          ),*/
          itemBuilder: (context, index) => MovieCard(movie: movies[index]),
        ),
      ),
    );
  }
}
