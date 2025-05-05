import 'package:college_app/constants.dart';
import 'package:flutter/material.dart';

void ShowSnackBar(BuildContext context, String messaeg) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(
      messaeg,
      style: TextStyle(color: kTextColor),
    ),
    backgroundColor: kPrimaryColor,
  ));
}
