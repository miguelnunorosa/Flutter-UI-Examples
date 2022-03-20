// Our movie model
import 'package:movie_info_app/settings/constants.dart';

class Movie {
  final int id, year, numOfRatings, criticsReview, metascoreRating;
  final double rating;
  final List<String> gender;
  final String plot, title, poster, backdrop;
  final List<Map> cast;

  Movie({
    required this.poster,
    required this.backdrop,
    required this.title,
    required this.id,
    required this.year,
    required this.numOfRatings,
    required this.criticsReview,
    required this.metascoreRating,
    required this.rating,
    required this.gender,
    required this.plot,
    required this.cast,
  });
}

// our demo data movie data
List<Movie> movies = [
  Movie(
    id: 1,
    title: "Bloodshot",
    year: 2020,
    poster: IMG_POSTER_1,
    backdrop: IMG_BACKDROP_1,
    numOfRatings: 150212,
    rating: 7.3,
    criticsReview: 50,
    metascoreRating: 76,
    gender: ["Action", "Drama"],
    plot: plotText,
    cast: [
      {
        "orginalName": "James Mangold",
        "movieName": "Director",
        "image": IMG_ACTOR_1,
      },
      {
        "orginalName": "Matt Damon",
        "movieName": "Carroll",
        "image": IMG_ACTOR_2,
      },
      {
        "orginalName": "Christian Bale",
        "movieName": "Ken Miles",
        "image": IMG_ACTOR_3,
      },
      {
        "orginalName": "Caitriona Balfe",
        "movieName": "Mollie",
        "image": IMG_ACTOR_4,
      },
    ],
  ),
  Movie(
    id: 2,
    title: "Ford v Ferrari ",
    year: 2019,
    poster: IMG_POSTER_2,
    backdrop: IMG_BACKDROP_2,
    numOfRatings: 150212,
    rating: 8.2,
    criticsReview: 50,
    metascoreRating: 76,
    gender: ["Action", "Biography", "Drama"],
    plot: plotText,
    cast: [
      {
        "orginalName": "James Mangold",
        "movieName": "Director",
        "image": IMG_ACTOR_1,
      },
      {
        "orginalName": "Matt Damon",
        "movieName": "Carroll",
        "image": IMG_ACTOR_2,
      },
      {
        "orginalName": "Christian Bale",
        "movieName": "Ken Miles",
        "image": IMG_ACTOR_3,
      },
      {
        "orginalName": "Caitriona Balfe",
        "movieName": "Mollie",
        "image": IMG_ACTOR_4,
      },
    ],
  ),
  Movie(
    id: 1,
    title: "Onward",
    year: 2020,
    poster: IMG_POSTER_3,
    backdrop: IMG_BACKDROP_3,
    numOfRatings: 150212,
    rating: 7.6,
    criticsReview: 50,
    metascoreRating: 79,
    gender: ["Action", "Drama"],
    plot: plotText,
    cast: [
      {
        "orginalName": "James Mangold",
        "movieName": "Director",
        "image": IMG_ACTOR_1,
      },
      {
        "orginalName": "Matt Damon",
        "movieName": "Carroll",
        "image": IMG_ACTOR_2,
      },
      {
        "orginalName": "Christian Bale",
        "movieName": "Ken Miles",
        "image": IMG_ACTOR_3,
      },
      {
        "orginalName": "Caitriona Balfe",
        "movieName": "Mollie",
        "image": IMG_ACTOR_4,
      },
    ],
  ),
];

String plotText =
    "American car designer Carroll Shelby and driver Kn Miles battle corporate interference and the laws of physics to build a revolutionary race car for Ford in order.";