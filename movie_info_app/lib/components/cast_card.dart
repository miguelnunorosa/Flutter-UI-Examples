import 'package:flutter/material.dart';
import 'package:movie_info_app/models/movie.dart';
import 'package:movie_info_app/settings/constants.dart';


class CastCard extends StatelessWidget {
  const CastCard({Key? key, required this.cast}) : super(key: key);

  final Map cast;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: KDEFAULTPADDING),
      width: 80,
      child: Column(
        children: [
          Container(
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: AssetImage(cast['image'])),
            ),
          ),
        ],
      ),
    );
  }
}
