import 'package:flutter/material.dart';

class CustomElevatedIconButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color iconColor;
  final double fontSize;
  final Color buttonColor;
  final IconData icon;
  final VoidCallback onPressed;
  final double letterSpacing;
  final double borderRadius;
  final double verticalPadding;
  final double horizontalPadding;
  final FontWeight fontWeight;

  const CustomElevatedIconButton(
      {Key? key,
      required this.text,
      required this.textColor,
      required this.iconColor,
      required this.fontSize,
      required this.buttonColor,
      required this.icon,
      required this.onPressed,
      required this.letterSpacing,
      required this.borderRadius,
      required this.verticalPadding,
      required this.horizontalPadding,
      required this.fontWeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(buttonColor),
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(
                vertical: verticalPadding, horizontal: horizontalPadding),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          )),
        ),
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: iconColor,
        ),
        label: Text(
          text,
          style: TextStyle(
              color: textColor,
              fontSize: fontSize,
              letterSpacing: letterSpacing,
              fontWeight: fontWeight),
        ));
  }
}
