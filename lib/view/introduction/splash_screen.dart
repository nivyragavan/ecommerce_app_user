import 'package:ecommerce_user_app/constant/colors.dart';
import 'package:ecommerce_user_app/view/introduction/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToOnBoardingScreen();
  }

  navigateToOnBoardingScreen() async {
    await Future.delayed(const Duration(seconds: 3), () {});
    Get.offAll(OnBoardingScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/splash.png'))),
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              blue.withOpacity(0.6),
              white.withOpacity(0.4),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
            child: Stack(
              children: [
                Positioned(
                  bottom: 20,
                  right: 10,
                  child: Image.asset(
                    'assets/logos/logo.png',
                    width: 130,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
