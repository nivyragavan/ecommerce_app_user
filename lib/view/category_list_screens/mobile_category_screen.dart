import 'package:ecommerce_user_app/constant/colors.dart';
import 'package:ecommerce_user_app/view/mobile_category_list_screens/android_phones_screen.dart';
import 'package:ecommerce_user_app/view/mobile_category_list_screens/basic_phones_screen.dart';
import 'package:ecommerce_user_app/view/mobile_category_list_screens/ios_phones_screen.dart';
import 'package:ecommerce_user_app/view/mobile_category_list_screens/mobile_brands_screen.dart';
import 'package:ecommerce_user_app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MobileCategoryScreen extends StatelessWidget {
  MobileCategoryScreen({Key? key}) : super(key: key);

  final mobileBrandName = [
    'Samsung',
    'Apple',
    'Google Pixel',
    'One Plus',
    'Oppo',
    'Vivo'
  ];

  final mobileBrandImage = [
    'assets/images/mobile/brands/samsung.png',
    'assets/images/mobile/brands/apple.png',
    'assets/images/mobile/brands/pixel.png',
    'assets/images/mobile/brands/oneplus.png',
    'assets/images/mobile/brands/oppo.png',
    'assets/images/mobile/brands/vivo.png'
  ];

  final basicMobileName = ['Samsung', 'Nokia', 'Motorola', 'Lava'];

  final basicMobileImage = [
    'assets/images/mobile/basicphones/samsung.png',
    'assets/images/mobile/basicphones/nokia.png',
    'assets/images/mobile/basicphones/motorola.png',
    'assets/images/mobile/basicphones/lava.png'
  ];

  final androidMobileName = ['Samsung', 'Google Pixel', 'One Plus', 'Poco'];

  final androidMobileImage = [
    'assets/images/mobile/androidphones/samsung.png',
    'assets/images/mobile/androidphones/pixel.png',
    'assets/images/mobile/androidphones/oneplus.png',
    'assets/images/mobile/androidphones/poco.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBlue,
      appBar: buildAppBar(),
      body: ListView(
        children: [
          buildMobileBrand(),
          const Divider(
            thickness: 4,
          ),
          const SizedBox(height: 10),
          buildBasicPhones(),
          const Divider(
            thickness: 4,
          ),
          const SizedBox(height: 10),
          buildAndroidPhones(),
          const Divider(
            thickness: 4,
          ),
          const SizedBox(height: 10),
          buildIosPhones()
        ],
      ),
    );
  }

  buildAppBar() {
    return AppBar(
      backgroundColor: blue,
      iconTheme: const IconThemeData(color: black),
      elevation: 0,
      title: TextField(
        // controller: controller,
        cursorColor: black,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(10),
            border: OutlineInputBorder(
                borderSide: const BorderSide(color: black),
                borderRadius: BorderRadius.circular(5)),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: black, width: 2),
                borderRadius: BorderRadius.circular(5)),
            hintText: 'Search',
            filled: true,
            fillColor: white,
            prefixIcon: const Icon(
              Icons.search,
              color: black,
            )),
      ),
      toolbarHeight: 70,
    );
  }

  buildMobileBrand() {
    return Column(
      children: [
        Container(
          width: Get.width,
          height: 50,
          color: white,
          child: const Center(
            child: CustomText(
                text: 'Brands',
                color: black,
                fontSize: 20,
                fontWeight: FontWeight.normal,
                letterSpacing: 1),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: mobileBrandName.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Get.to(const MobileBrandsScreen());
                  },
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(blurRadius: 3, color: blue)
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0, right: 5),
                          child: SizedBox(
                              width: Get.width,
                              height: 50,
                              child: Image.asset(mobileBrandImage[index])),
                        ),
                        Container(
                          width: Get.width,
                          height: 40,
                          decoration: const BoxDecoration(
                              color: blue,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10))),
                          child: Center(
                            child: CustomText(
                                text: mobileBrandName[index],
                                color: black,
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                letterSpacing: 1),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }

  buildBasicPhones() {
    return Column(
      children: [
        Container(
          width: Get.width,
          height: 50,
          color: white,
          child: const Center(
            child: CustomText(
                text: 'Basic Phones',
                color: black,
                fontSize: 20,
                fontWeight: FontWeight.normal,
                letterSpacing: 1),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: basicMobileName.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Get.to(BasicPhonesScreen());
                  },
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(blurRadius: 3, color: blue)
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(height: 10),
                        SizedBox(
                            width: Get.width,
                            height: 100,
                            child: Image.asset(basicMobileImage[index])),
                        Container(
                          width: Get.width,
                          height: 40,
                          decoration: const BoxDecoration(
                              color: blue,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10))),
                          child: Center(
                            child: CustomText(
                                text: basicMobileName[index],
                                color: black,
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                letterSpacing: 1),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }),
        )
      ],
    );
  }

  buildAndroidPhones() {
    return Column(
      children: [
        Container(
          width: Get.width,
          height: 50,
          color: white,
          child: const Center(
            child: CustomText(
                text: 'Android Phones',
                color: black,
                fontSize: 20,
                fontWeight: FontWeight.normal,
                letterSpacing: 1),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: androidMobileName.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Get.to(AndroidPhonesScreen());
                  },
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(blurRadius: 3, color: blue)
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(height: 10),
                        SizedBox(
                            width: Get.width,
                            height: 100,
                            child: Image.asset(androidMobileImage[index])),
                        Container(
                          width: Get.width,
                          height: 40,
                          decoration: const BoxDecoration(
                              color: blue,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10))),
                          child: Center(
                            child: CustomText(
                                text: androidMobileName[index],
                                color: black,
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                letterSpacing: 1),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }),
        )
      ],
    );
  }

  buildIosPhones() {
    return Column(
      children: [
        Container(
          width: Get.width,
          height: 50,
          color: white,
          child: const Center(
            child: CustomText(
                text: 'Ios Phones',
                color: black,
                fontSize: 20,
                fontWeight: FontWeight.normal,
                letterSpacing: 1),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 1,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Get.to(IosPhonesScreen());
                  },
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(blurRadius: 3, color: blue)
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(height: 10),
                        SizedBox(
                            width: Get.width,
                            height: 100,
                            child: Image.asset(
                                'assets/images/mobile/iosphones/apple.png')),
                        Container(
                          width: Get.width,
                          height: 40,
                          decoration: const BoxDecoration(
                              color: blue,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10))),
                          child: const Center(
                            child: CustomText(
                                text: 'Apple',
                                color: black,
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                letterSpacing: 1),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }),
        )
      ],
    );
  }
}
