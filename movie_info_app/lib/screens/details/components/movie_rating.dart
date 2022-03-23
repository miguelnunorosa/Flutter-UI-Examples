import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_info_app/models/movie.dart';
import 'package:movie_info_app/settings/constants.dart';



class MovieRating extends StatelessWidget {
  const MovieRating({Key? key, required this.movie}) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Positioned(
      bottom: 0, right: 0,
      child: Container(
        width: size.width * 0.9, //get 90% of total width
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(50), topLeft: Radius.circular(50)),
          boxShadow: [BoxShadow(
              offset: const Offset(0, 5),
              blurRadius: 50,
            color: KTEXTCOLOR.withOpacity(0.2),
          ),
          ]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(ICON_STAR_FILL),
                const SizedBox(height: KDEFAULTPADDING / 4),
                RichText(
                  text: TextSpan(
                    style: const TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        text: "${movie.rating}/",
                        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      const TextSpan(text: "10\n"),
                      const TextSpan(
                        text: "150,212",
                        style: TextStyle(color: KTEXTLIGHTCOLOR),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(ICON_STAR),
                const SizedBox(height: KDEFAULTPADDING / 4),
                Text("Rate this", style: Theme.of(context).textTheme.bodyText2,),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: COLORMETASCORERATING,
                    borderRadius: BorderRadius.circular(2),
                  ),
                  child: Text("${movie.metascoreRating}",
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(height: KDEFAULTPADDING / 4),
                const Text("Metascore",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                  ),
                ),
                const Text("62 critic reviews",
                  style: TextStyle(
                    color: KTEXTLIGHTCOLOR,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
