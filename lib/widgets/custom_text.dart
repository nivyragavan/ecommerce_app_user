import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final double letterSpacing;
  final FontWeight fontWeight;
  const CustomText(
      {Key? key,
      required this.text,
      required this.color,
      required this.fontSize,
      required this.fontWeight,
      required this.letterSpacing})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontWeight: fontWeight,
          fontSize: fontSize,
          letterSpacing: letterSpacing),
    );
  }
}
