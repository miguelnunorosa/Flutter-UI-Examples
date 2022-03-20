import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/settings/constants.dart';


class headerWithSearch extends StatelessWidget {
  const headerWithSearch({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only( bottom: KDEFAULTPADDING * 2.5 ),
      height: size.height * 0.2, //cover 20% of total screen height
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(
              left: KDEFAULTPADDING,
              right: KDEFAULTPADDING,
              bottom: KDEFAULTPADDING + 36,
            ),
            height: size.height * 0.2 - 27,
            decoration: const BoxDecoration(
              color: KPRIMARYCOLOR,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(36),
                bottomLeft: Radius.circular(36),
              ),
            ),
            child: Row(
              children: [
                Text("Hi Mike!",
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                Image.asset(IMG_LOGO),
              ],
            ),
          ),
          Positioned(
            bottom: 0, left: 0, right: 0,
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: KDEFAULTPADDING),
              padding: const EdgeInsets.symmetric(horizontal: KDEFAULTPADDING),
              height: 54,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
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
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search...",
                        hintStyle: TextStyle(color: KPRIMARYCOLOR.withOpacity(0.3)),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        //suffixIcon: SvgPicture.asset(ICON_SEARCH),
                      ),
                      style: TextStyle(color: KPRIMARYCOLOR.withOpacity(0.5)),
                      autocorrect: false,
                      onChanged: (value){},
                    ),
                  ),
                  SvgPicture.asset(ICON_SEARCH),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
