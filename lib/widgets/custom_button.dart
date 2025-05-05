import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String? buttonContent, imageUrl;
  VoidCallback? onTap;
  Color? color, iconColor;
  CustomButton(
      {this.buttonContent,
      this.onTap,
      this.color,
      this.iconColor,
      this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: color ?? Colors.cyan,
        ),
        height: 40,
        width: 300,
        child: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (imageUrl != null)
              Image.asset(
                imageUrl!,
                width: 24,
                height: 24,
              ),
            SizedBox(
              width: 10,
            ),
            Text(
              buttonContent!,
              style: TextStyle(
                fontSize: 16,
                color: iconColor,
              ),
            ),
          ],
        )),
      ),
    );
  }
}
