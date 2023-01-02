import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String text;
  final Color iconColor;
  final Color cursorColor;
  final IconData icon;
  final TextEditingController controller;
  final bool filled;
  final Color fillColor;
  final TextInputType keyboardType;

  const CustomTextFormField(
      {Key? key,
      required this.text,
      required this.iconColor,
      required this.cursorColor,
      required this.icon,
      required this.controller,
      required this.filled,
      required this.fillColor,
      required this.keyboardType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
