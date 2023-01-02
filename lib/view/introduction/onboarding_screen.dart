import 'package:ecommerce_user_app/constant/colors.dart';
import 'package:ecommerce_user_app/controller/onboarding_controller.dart';
import 'package:ecommerce_user_app/view/authentication/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  final controller = Get.put(OnboardingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: PageView.builder(
          scrollDirection: Axis.horizontal,
          controller: controller.pageController,
          onPageChanged: controller.selectedPageIndex,
          itemCount: controller.onboardingPages.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                const SizedBox(height: 20),
                Image.asset(controller.onboardingPages[index].image),
                const Spacer(
                  flex: 3,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        controller.onboardingPages[index].title,
                        style: const TextStyle(
                            fontSize: 30,
                            color: goldBrown,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        controller.onboardingPages[index].description,
                        style: const TextStyle(fontSize: 20, color: brown),
                      ),
                    ],
                  ),
                ),
                const Spacer(flex: 3),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                          children: List.generate(
                              controller.onboardingPages.length, (indexDots) {
                        return Container(
                          margin: const EdgeInsets.only(right: 5),
                          width: index == indexDots ? 25 : 8,
                          height: 8,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: goldBrown),
                        );
                      })),
                      InkWell(
                        onTap: () {
                          controller.isLastPage
                              ? Get.offAll(LoginScreen())
                              : controller.forwardAction();
                        },
                        child: Container(
                          width: 70,
                          height: 35,
                          decoration: BoxDecoration(
                              color: brown,
                              borderRadius: BorderRadius.circular(5),
                              image: const DecorationImage(
                                  image: AssetImage(
                                      'assets/images/forwardarrow.png'))),
                        ),
                      )
                    ],
                  ),
                ),
                const Spacer(flex: 2),
              ],
            );
          }),
    );
  }
}
