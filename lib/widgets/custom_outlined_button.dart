import 'package:flutter/material.dart';

class CustomOutlinedButton extends StatelessWidget {
  final Color backgroundColor;
  final Size fixedSize;
  final Color borderColor;
  final Widget child;
  final VoidCallback onPressed;
  final double borderRadius;
  final double borderWidth;
  final double elevation;

  const CustomOutlinedButton(
      {Key? key,
      required this.backgroundColor,
      required this.fixedSize,
      required this.borderColor,
      required this.child,
      required this.onPressed,
      required this.borderRadius,
      required this.borderWidth,
      required this.elevation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(
            elevation: elevation,
            backgroundColor: backgroundColor,
            fixedSize: fixedSize,
            side: BorderSide(color: borderColor, width: borderWidth),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius))),
        onPressed: onPressed,
        child: child);
  }
}
