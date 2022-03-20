import 'package:flutter/material.dart';
import 'package:plant_app/settings/constants.dart';


class NameAndPrice extends StatelessWidget {
  const NameAndPrice({
    Key? key, required this.name, required this.country, required this.price,
  }) : super(key: key);

  final String name, country;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: KDEFAULTPADDING),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$name\n".toUpperCase(),
                  style: Theme.of(context).textTheme.headline4?.copyWith(
                    color: KTEXTCOLOR,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: country.toUpperCase(),
                  style: TextStyle(
                    color: KPRIMARYCOLOR,
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Text("€$price",
            style: Theme.of(context).textTheme.headline5?.copyWith(color: KPRIMARYCOLOR),
          ),
        ],
      ),
    );
  }
}
