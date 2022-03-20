import 'package:flutter/material.dart';
import 'package:plant_app/settings/constants.dart';


class RecomendedPlantCard extends StatelessWidget {
  const RecomendedPlantCard({
    Key? key,
    required this.title,
    required this.image,
    required this.country,
    required this.price,
    required this.press,
  }) : super(key: key);

  final String title, image, country;
  final int price;
  final Function() press;


  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container( //cover 40% of our total screen width
      margin: const EdgeInsets.only(
        left: KDEFAULTPADDING / 2,
        top: KDEFAULTPADDING / 2,
        bottom: KDEFAULTPADDING * 2.5,
      ),
      width: size.width * 0.4,
      child: GestureDetector(
        onTap: press,
        child: Column(
          children: [
            Image.asset(image),
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
                          text: title.toUpperCase() + "\n",
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                          text: country.toUpperCase(),
                          style: TextStyle(
                            color: KPRIMARYCOLOR.withOpacity(0.5),
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Text("€"+price.toString(),
                    style: Theme.of(context).textTheme.button?.copyWith(color: KPRIMARYCOLOR),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
