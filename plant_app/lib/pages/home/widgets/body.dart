import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/pages/home/widgets/headerWithSearchBox.dart';
import 'package:plant_app/settings/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //get the screen size

    return Column(
      children: [
        Container(
          height: size.height * 0.2, //cover 20% of our total height
          child: Stack(
            children: [
              headerWithSearchBox(size: size),
              Positioned(
                bottom: 0, left: 0, right: 0,
                child: Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  height: 54,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.23)
                      ),
                    ]
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search...",
                            hintStyle: TextStyle( color: kPrimaryColor.withOpacity(0.3)),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            //suffixIcon: SvgPicture.asset(ICON_SEARCH),
                          ),
                          style: TextStyle(color: kPrimaryColor.withOpacity(0.5)),
                          onChanged: (value){},
                        ),
                      ),
                      SvgPicture.asset(ICON_SEARCH),
                    ],
                  )
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}


