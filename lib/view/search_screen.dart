import 'package:ecommerce_user_app/constant/colors.dart';
import 'package:ecommerce_user_app/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: lightBlue,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 30, left: 10, right: 10, bottom: 10),
          child: CustomTextField(
              text: 'Search Your Products',
              iconColor: black,
              cursorColor: black,
              icon: Icons.search,
              filled: true,
              fillColor: white,
              keyboardType: TextInputType.text),
        ),
      ),
    );
  }
}
