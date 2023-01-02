import 'package:ecommerce_user_app/model/onboarding_info.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  var selectedPageIndex = 0.obs;
  bool get isLastPage => selectedPageIndex.value == onboardingPages.length - 1;
  var pageController = PageController();

  forwardAction() {
    if (isLastPage) {
    } else {
      pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
    }
  }

  List<OnboardingInfo> onboardingPages = [
    OnboardingInfo('assets/images/intro1.png', 'Make Orders',
        'Want to save time and money while shopping? Make your orders now'),
    OnboardingInfo('assets/images/intro2.png', 'Easy Payment',
        'No need to worry about payments. We make everything easy for you'),
    OnboardingInfo('assets/images/intro3.png', 'Get Delivered',
        'We deliver your bucket list at your doorstep, safe and secured'),
  ];
}
