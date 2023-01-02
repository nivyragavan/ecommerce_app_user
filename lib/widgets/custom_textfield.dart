import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String text;
  final Color iconColor;
  final Color cursorColor;
  final IconData icon;
  final TextEditingController? controller;
  final bool filled;
  final Color fillColor;
  final TextInputType keyboardType;

  const CustomTextField(
      {Key? key,
      required this.text,
      required this.iconColor,
      required this.cursorColor,
      required this.icon,
      required this.filled,
      required this.fillColor,
      required this.keyboardType,
      this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: controller,
        cursorColor: cursorColor,
        keyboardType: keyboardType,
        decoration: InputDecoration(
            filled: filled,
            fillColor: fillColor,
            border: InputBorder.none,
            hintText: text,
            suffixIcon: Icon(
              icon,
              color: iconColor,
            )));
  }
}
