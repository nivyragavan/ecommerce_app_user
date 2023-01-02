import 'package:ecommerce_user_app/constant/colors.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  const CustomAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: blue,
      iconTheme: const IconThemeData(color: black),
      title: Text(
        title,
        style: const TextStyle(
            fontSize: 20, fontWeight: FontWeight.w500, color: black),
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
