import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final Color iconColor;
  final double iconSize;
  const CustomIconButton(
      {Key? key,
      required this.icon,
      required this.onPressed,
      required this.iconColor,
      required this.iconSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      visualDensity: const VisualDensity(horizontal: -4.0, vertical: -4.0),
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      icon: Icon(icon),
      color: iconColor,
      iconSize: iconSize,
    );
  }
}
