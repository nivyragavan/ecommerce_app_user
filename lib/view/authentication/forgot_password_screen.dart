import 'package:ecommerce_user_app/constant/colors.dart';
import 'package:ecommerce_user_app/view/authentication/login_screen.dart';
import 'package:ecommerce_user_app/widgets/custom_elevated_icon_button.dart';
import 'package:ecommerce_user_app/widgets/custom_text.dart';
import 'package:ecommerce_user_app/widgets/custom_textformfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({Key? key}) : super(key: key);

  final phoneNumber = TextEditingController();
  final newPassword = TextEditingController();
  final confirmNewPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: Get.width,
          height: Get.height,
          color: white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: Get.width * 0.90,
                height: Get.height * 0.50,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: blue,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          color: black.withOpacity(0.7),
                          blurRadius: 15,
                          spreadRadius: 3,
                          offset: const Offset(0, 1))
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CustomText(
                        text: 'FORGOT PASSWORD?',
                        color: white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 3),
                    const SizedBox(height: 20),
                    CustomTextFormField(
                      text: 'Phone Number',
                      iconColor: white,
                      cursorColor: white,
                      icon: Icons.phone,
                      controller: phoneNumber,
                      filled: true,
                      fillColor: white.withOpacity(0.4),
                      keyboardType: TextInputType.phone,
                    ),
                    const SizedBox(height: 20),
                    CustomTextFormField(
                      text: 'New Password',
                      iconColor: white,
                      cursorColor: white,
                      icon: Icons.password,
                      controller: newPassword,
                      filled: true,
                      fillColor: white.withOpacity(0.4),
                      keyboardType: TextInputType.text,
                    ),
                    const SizedBox(height: 20),
                    CustomTextFormField(
                      text: 'Confirm New Password',
                      iconColor: white,
                      cursorColor: white,
                      icon: Icons.password,
                      controller: confirmNewPassword,
                      filled: true,
                      fillColor: white.withOpacity(0.4),
                      keyboardType: TextInputType.text,
                    ),
                    const SizedBox(height: 20),
                    CustomElevatedIconButton(
                      text: 'Submit',
                      textColor: black,
                      fontSize: 17,
                      verticalPadding: 10,
                      onPressed: () {
                        Get.to(LoginScreen());
                      },
                      letterSpacing: 3,
                      iconColor: black,
                      buttonColor: white,
                      horizontalPadding: 15,
                      icon: Icons.save_alt_outlined,
                      borderRadius: 25,
                      fontWeight: FontWeight.normal,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
