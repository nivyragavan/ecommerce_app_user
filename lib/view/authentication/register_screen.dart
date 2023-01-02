import 'package:ecommerce_user_app/constant/colors.dart';
import 'package:ecommerce_user_app/view/authentication/login_screen.dart';
import 'package:ecommerce_user_app/widgets/custom_elevated_icon_button.dart';
import 'package:ecommerce_user_app/widgets/custom_text.dart';
import 'package:ecommerce_user_app/widgets/custom_text_button.dart';
import 'package:ecommerce_user_app/widgets/custom_textformfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);

  final name = TextEditingController();
  final phoneNumber = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();

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
              Image.asset('assets/logos/logo.png', width: 200),
              const SizedBox(height: 50),
              Container(
                width: Get.width * 0.90,
                height: Get.height * 0.70,
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
                        text: 'SIGNUP',
                        color: white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 3),
                    const SizedBox(height: 20),
                    CustomTextFormField(
                      text: 'Name',
                      iconColor: white,
                      cursorColor: white,
                      icon: Icons.person,
                      controller: name,
                      filled: true,
                      fillColor: white.withOpacity(0.4),
                      keyboardType: TextInputType.text,
                    ),
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
                      text: 'Password',
                      iconColor: white,
                      cursorColor: white,
                      icon: Icons.password,
                      controller: password,
                      filled: true,
                      fillColor: white.withOpacity(0.4),
                      keyboardType: TextInputType.text,
                    ),
                    const SizedBox(height: 20),
                    CustomTextFormField(
                      text: 'Confirm Password',
                      iconColor: white,
                      cursorColor: white,
                      icon: Icons.password,
                      controller: confirmPassword,
                      filled: true,
                      fillColor: white.withOpacity(0.4),
                      keyboardType: TextInputType.text,
                    ),
                    const SizedBox(height: 20),
                    CustomElevatedIconButton(
                      text: 'SignUp',
                      textColor: black,
                      fontSize: 17,
                      verticalPadding: 10,
                      onPressed: () {},
                      letterSpacing: 3,
                      iconColor: black,
                      buttonColor: white,
                      horizontalPadding: 15,
                      icon: Icons.check_circle_outline,
                      borderRadius: 25,
                      fontWeight: FontWeight.normal,
                    ),
                    const SizedBox(height: 5),
                    CustomTextButton(
                      fontWeight: FontWeight.w600,
                      letterSpacing: 2,
                      textColor: white,
                      onPressed: () {
                        Get.to(LoginScreen());
                      },
                      text: 'Already have an account? Signin',
                      fontSize: 14,
                    )
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
