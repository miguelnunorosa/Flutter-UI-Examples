import 'package:flutter/material.dart';
import 'package:movie_info_app/components/movie_card.dart';
import 'package:movie_info_app/models/movie.dart';
import 'package:movie_info_app/settings/constants.dart';
import 'dart:math' as math;


class MovieCarousel extends StatefulWidget {
  const MovieCarousel({Key? key}) : super(key: key);

  @override
  State<MovieCarousel> createState() => _MovieCarouselState();
}

class _MovieCarouselState extends State<MovieCarousel> {

  late PageController _pageController;
  int initialPage = 1;

  @override
  void initState() {

    _pageController = PageController(
      viewportFraction: 0.8, //show small detail of previous/next movie cover
      initialPage: initialPage, //default movie poster
    );

    super.initState();
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
          itemBuilder: (context, index) => buildMovieSlider(index),
          physics: const ClampingScrollPhysics(),
          controller: _pageController,
          onPageChanged: (value){
            setState(() {
              initialPage = value;
            });
          },
        ),
      ),
    );
  }

  Widget buildMovieSlider(int index) => AnimatedBuilder(
    animation: _pageController,
    builder: (context, child){
      double value = 0.0;
      if(_pageController.position.haveDimensions){
        value = index - _pageController.page!;
        value = (value * 0.038).clamp(-1, 1);
      }
      return AnimatedOpacity(
        duration: Duration(milliseconds: 350),
        opacity: initialPage == index ? 1 : 0.3,
        child: Transform.rotate(
          angle: math.pi * value,
          child: MovieCard(movie: movies[index]),
        ),
      );
    },
  );
}
