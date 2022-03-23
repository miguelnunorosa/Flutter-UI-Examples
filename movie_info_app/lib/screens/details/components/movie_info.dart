import 'package:flutter/material.dart';
import 'package:movie_info_app/models/movie.dart';
import 'package:movie_info_app/settings/constants.dart';

class MovieInfo extends StatelessWidget {
  const MovieInfo({Key? key, required this.movie}) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(KDEFAULTPADDING),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(movie.title, style: Theme.of(context).textTheme.headline5),
                const SizedBox(height: KDEFAULTPADDING / 2),
                Row(
                  children: [
                    Text("${movie.year}", style: TextStyle(color: KTEXTLIGHTCOLOR)),
                    SizedBox(width: KDEFAULTPADDING),
                    Text("PG-13", style: TextStyle(color: KTEXTLIGHTCOLOR)),
                    SizedBox(width: KDEFAULTPADDING),
                    Text("2h 32min", style: TextStyle(color: KTEXTLIGHTCOLOR)),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 64, width: 64,
            child: FlatButton(
              onPressed: (){},
              child: Icon(Icons.add, size: 28, color: Colors.white),
              color: KSECONDARYCOLOR,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            ),
          ),
        ],
      ),
    );
  }
}
