import 'package:flutter/material.dart';
import 'package:plant_app/settings/constants.dart';


class RecomendedPlantCard extends StatelessWidget {
  const RecomendedPlantCard({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container( //cover 40% of our total screen width
      margin: const EdgeInsets.only(
        left: KDEFAULTPADDING / 2,
        top: KDEFAULTPADDING / 2,
        bottom: KDEFAULTPADDING * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: [
          Image.asset(IMG_IMAGE1),
          Container(
            padding: const EdgeInsets.all(KDEFAULTPADDING / 2),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 10),
                  blurRadius: 50,
                  color: KPRIMARYCOLOR.withOpacity(0.23),
                ),
              ],
            ),
            child: Row(
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Samantha\n".toUpperCase(),
                        style: Theme.of(context).textTheme.button,
                      ),
                      TextSpan(
                        text: "Ukrain".toUpperCase(),
                        style: TextStyle(
                          color: KPRIMARYCOLOR.withOpacity(0.5),
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Text("€100",
                  style: Theme.of(context).textTheme.button?.copyWith(color: KPRIMARYCOLOR),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
