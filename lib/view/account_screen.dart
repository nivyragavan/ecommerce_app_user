import 'package:ecommerce_user_app/constant/colors.dart';
import 'package:ecommerce_user_app/view/address_settings_screen.dart';
import 'package:ecommerce_user_app/view/authentication/login_screen.dart';
import 'package:ecommerce_user_app/view/login_settings_screen.dart';
import 'package:ecommerce_user_app/widgets/custom_icon_button.dart';
import 'package:ecommerce_user_app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBlue,
      appBar: AppBar(
        title: const Text(
          'Your Account',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w500, color: black),
        ),
        centerTitle: true,
        backgroundColor: blue,
        iconTheme: const IconThemeData(color: black),
        actions: [
          CustomIconButton(
              icon: Icons.logout_outlined,
              onPressed: () {
                Get.to(LoginScreen());
              },
              iconColor: black,
              iconSize: 25)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [buildLoginDetails()],
        ),
      ),
    );
  }

  buildLoginDetails() {
    return Column(
      children: [
        const SizedBox(height: 20),
        const CustomText(
            text: 'Settings',
            color: black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 1),
        const SizedBox(height: 20),
        GestureDetector(
          onTap: () {
            Get.to(const LoginSettingsScreen());
          },
          child: Card(
              color: white,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    CustomText(
                        text: 'Login Settings',
                        color: blue,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1),
                    Icon(
                      Icons.chevron_right,
                      color: blue,
                      size: 30,
                    )
                  ],
                ),
              )),
        ),
        GestureDetector(
          onTap: () {
            Get.to(const AddressSettingsScreen());
          },
          child: Card(
              color: white,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    CustomText(
                        text: 'Address Settings',
                        color: blue,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1),
                    Icon(
                      Icons.chevron_right,
                      color: blue,
                      size: 30,
                    )
                  ],
                ),
              )),
        ),
      ],
    );
  }
}
