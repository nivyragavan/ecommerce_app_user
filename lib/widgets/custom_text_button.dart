import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final double letterSpacing;
  final FontWeight fontWeight;
  final VoidCallback onPressed;
  final Color textColor;
  final double fontSize;

  const CustomTextButton(
      {Key? key,
      required this.text,
      required this.letterSpacing,
      required this.fontWeight,
      required this.onPressed,
      required this.textColor,
      required this.fontSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(padding: EdgeInsets.zero),
      child: Text(
        text,
        style: TextStyle(
            fontSize: fontSize,
            color: textColor,
            letterSpacing: letterSpacing,
            fontWeight: fontWeight),
      ),
    );
  }
}
