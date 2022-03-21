import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_info_app/settings/constants.dart';


class TopAppBar extends StatelessWidget with PreferredSizeWidget{
  const TopAppBar({
    Key? key, required this.appTitle,
  }) : super(key: key);

  final String appTitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        padding: const EdgeInsets.only(left: KDEFAULTPADDING),
        icon: SvgPicture.asset(ICON_MENU),
        onPressed: () { print("Pressed Menu item"); },
      ),
      actions: [
        IconButton(
          padding: const EdgeInsets.symmetric(horizontal: KDEFAULTPADDING),
          icon: SvgPicture.asset(ICON_SEARCH),
          onPressed: () { print("Pressed Search item"); },
        ),
      ],
    );
  }


  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

}
