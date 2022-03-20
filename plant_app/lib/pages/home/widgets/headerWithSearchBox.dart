import 'package:flutter/material.dart';
import 'package:plant_app/settings/constants.dart';


class headerWithSearchBox extends StatelessWidget {
  const headerWithSearchBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: kDefaultPadding,
        right: kDefaultPadding,
        bottom: kDefaultPadding + 36,
      ),
      height: size.height * 0.2 - 27,
      decoration: const BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(36),
          bottomRight: Radius.circular(36),
        ),
      ),
      child: Row(
        children: [
          Text('Hello, Mike',
            style: Theme.of(context).textTheme.headline5?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          Image.asset(IMG_LOGO)
        ],
      ),
    );
  }
}