import 'package:ecommerce_user_app/constant/colors.dart';
import 'package:ecommerce_user_app/service/google_signin_api.dart';
import 'package:ecommerce_user_app/view/authentication/forgot_password_screen.dart';
import 'package:ecommerce_user_app/view/authentication/register_screen.dart';
import 'package:ecommerce_user_app/view/main_screen.dart';
import 'package:ecommerce_user_app/widgets/custom_elevated_button.dart';
import 'package:ecommerce_user_app/widgets/custom_elevated_icon_button.dart';
import 'package:ecommerce_user_app/widgets/custom_text.dart';
import 'package:ecommerce_user_app/widgets/custom_text_button.dart';
import 'package:ecommerce_user_app/widgets/custom_textformfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final phoneNumber = TextEditingController();
  final password = TextEditingController();

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
                height: Get.height * 0.50,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: blue,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          color: black.withOpacity(0.5),
                          blurRadius: 15,
                          spreadRadius: 3,
                          offset: const Offset(3, 0))
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CustomText(
                        text: 'SIGNIN',
                        color: white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 3),
                    const SizedBox(height: 20),
                    CustomTextFormField(
                      text: 'Phone Number',
                      iconColor: black,
                      cursorColor: black,
                      icon: Icons.phone,
                      controller: phoneNumber,
                      filled: true,
                      fillColor: white.withOpacity(0.4),
                      keyboardType: TextInputType.phone,
                    ),
                    const SizedBox(height: 20),
                    CustomTextFormField(
                      text: 'Password',
                      iconColor: black,
                      cursorColor: black,
                      icon: Icons.password,
                      controller: password,
                      filled: true,
                      fillColor: white.withOpacity(0.4),
                      keyboardType: TextInputType.text,
                    ),
                    const SizedBox(height: 5),
                    Align(
                        alignment: Alignment.topRight,
                        child: CustomTextButton(
                          fontWeight: FontWeight.w600,
                          letterSpacing: 2,
                          textColor: white,
                          onPressed: () {
                            Get.to(ForgotPasswordScreen());
                          },
                          text: 'Forgot Password?',
                          fontSize: 15,
                        )),
                    const SizedBox(height: 5),
                    CustomElevatedIconButton(
                      text: 'Signin',
                      textColor: black,
                      fontSize: 17,
                      verticalPadding: 10,
                      onPressed: () {
                        Get.to(const MainScreen());
                      },
                      letterSpacing: 3,
                      iconColor: black,
                      buttonColor: white,
                      horizontalPadding: 15,
                      icon: Icons.login,
                      borderRadius: 25,
                      fontWeight: FontWeight.normal,
                    ),
                    const SizedBox(height: 5),
                    CustomTextButton(
                      fontWeight: FontWeight.w600,
                      letterSpacing: 2,
                      textColor: white,
                      onPressed: () {
                        Get.to(RegisterScreen());
                      },
                      text: 'Don\'t have an account? SignUp',
                      fontSize: 15,
                    )
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(width: 30, height: 2, color: black),
                  const SizedBox(width: 5),
                  const CustomText(
                      text: 'OR',
                      color: black,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 2),
                  const SizedBox(width: 5),
                  Container(width: 30, height: 2, color: black),
                ],
              ),
              const SizedBox(height: 20),
              CustomElevatedButton(
                  text: 'SignUp with Google',
                  textColor: white,
                  fontSize: 17,
                  buttonColor: blue,
                  onPressed: () {
                    signIn(context);
                  },
                  letterSpacing: 2,
                  borderRadius: 20,
                  verticalPadding: 10,
                  horizontalPadding: 15,
                  fontWeight: FontWeight.w600)
            ],
          ),
        ),
      ),
    );
  }

  Future signIn(BuildContext context) async {
    final user = await GoogleSignInApi.login();
    if (user == null) {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Signin Failed')));
    } else {
      Get.to(const MainScreen());
    }
  }
}
