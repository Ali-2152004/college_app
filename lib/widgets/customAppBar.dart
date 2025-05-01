
import 'dart:ui' show TextStyle;

import 'package:college_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key, required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: kscreenColor,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           Text(
            title,
            style: TextStyle(
                fontSize: 24.0, fontWeight: FontWeight.bold, color: kTextColor),
          ),
          GestureDetector(
            child: SvgPicture.asset(
              'images/backarrow.svg',
              width: 27,
              height: 27,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
