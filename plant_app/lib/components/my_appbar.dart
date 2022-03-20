import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/settings/constants.dart';


class MyAppBar extends StatelessWidget with PreferredSizeWidget{
  const MyAppBar({Key? key, required this.appTitle}) : super(key: key);

  final String appTitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(appTitle),
      backgroundColor: KPRIMARYCOLOR,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(ICON_MENU),
        onPressed: (){},
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
