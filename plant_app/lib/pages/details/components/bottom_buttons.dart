import 'package:flutter/material.dart';
import 'package:plant_app/settings/constants.dart';



class BottomButtons extends StatelessWidget {
  const BottomButtons({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Row(
      children: [
        SizedBox(
          width: _size.width / 2,
          height: 84,
          child: FlatButton(
            color: KPRIMARYCOLOR,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
            onPressed: (){},
            child: const Text("Buy Now",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            //width: size.width / 2,
            height: 84,
            child: FlatButton(
              color: KPRIMARYCOLOR.withOpacity(0.06),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                ),
              ),
              onPressed: (){},
              child: const Text("Description",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
