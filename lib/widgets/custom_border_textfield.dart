import 'package:flutter/material.dart';

class CustomBorderTextField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final Color labelTextColor;
  final Color borderColor;
  final double focusedBorderWidth;
  final double borderRadius;
  final Color cursorColor;
  final double labelTextSize;
  final TextEditingController? controller;
  final Color focusedBorderColor;
  final TextInputType keyboardType;
  const CustomBorderTextField(
      {Key? key,
      required this.labelText,
      required this.hintText,
      required this.labelTextColor,
      required this.borderColor,
      required this.borderRadius,
      required this.cursorColor,
      required this.labelTextSize,
      this.controller,
      required this.focusedBorderColor,
      required this.focusedBorderWidth,
      required this.keyboardType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      cursorColor: cursorColor,
      keyboardType: keyboardType,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: borderColor),
              borderRadius: BorderRadius.circular(5)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: focusedBorderColor, width: focusedBorderWidth),
              borderRadius: BorderRadius.circular(5)),
          labelText: labelText,
          labelStyle: TextStyle(fontSize: labelTextSize, color: labelTextColor),
          hintText: hintText),
    );
  }
}
