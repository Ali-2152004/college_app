import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {super.key,
      required this.onChanged,
      required this.secured,
      this.textHint,
      this.icon});
  String? textHint;
  Function(String)? onChanged;
  final Icon? icon;
  bool? secured;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(5)),
      height: 40,
      child: TextFormField(
        cursorWidth: 2,
        cursorColor: Colors.black,
        obscureText: secured!,
        validator: (data) {
          if (data!.isEmpty) {
            return 'this field is required !';
          }
          return null;
        },
        style: const TextStyle(
          fontSize: 14,
          color: Colors.black,
        ),
        onChanged: onChanged,
        decoration: InputDecoration(
          suffixIcon: icon,
          hintText: textHint,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(color: Color(0xffCBD5E1))),
          hintStyle: const TextStyle(color: Color.fromARGB(255, 114, 119, 126)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(color: Color(0xffCBD5E1))),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(color: Color(0xffCBD5E1))),
        ),
      ),
    );
  }
}
