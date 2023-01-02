import 'package:ecommerce_user_app/constant/colors.dart';
import 'package:ecommerce_user_app/view/product_screen.dart';
import 'package:ecommerce_user_app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

class BasicPhonesScreen extends StatelessWidget {
  BasicPhonesScreen({Key? key}) : super(key: key);

  final basicMobileImage = [
    'assets/images/mobile/basicphones/samsung.png',
    'assets/images/mobile/basicphones/nokia.png',
    'assets/images/mobile/basicphones/motorola.png',
    'assets/images/mobile/basicphones/lava.png'
  ];

  final basicMobileName = [
    'Samsung Guru Music 2 315 (GT-B315, Black) (SM-B315EZKDINS)',
    'Nokia 5310 Dual SIM Keypad Phone with MP3 Player, Wireless FM Radio and Rear Camera with Flash | White/Red',
    'Motorola a10 keypad Mobile Dual Sim with Expandable Memory Upto 32GB,FM with 1750 mAh Battery, Rose Gold',
    'Lava A1 Josh 21(Blue Silver) -Dual Sim,Call Blink Notification,Military Grade Certified with 4 Day Battery Backup, Keypad Mobile'
  ];

  final basicMobilePricing = [
    '\u{20B9} 2,499',
    '\u{20B9} 3,649',
    '\u{20B9} 1,399',
    '\u{20B9} 1,055'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBlue,
      appBar: buildAppBar(),
      body: buildBasicPhonesGrid(),
    );
  }

  buildAppBar() {
    return AppBar(
      backgroundColor: blue,
      iconTheme: const IconThemeData(color: black),
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

  buildBasicPhonesGrid() {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: GridView.builder(
          itemCount: 4,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              // mainAxisSpacing: 10,
              // crossAxisSpacing: 10,
              childAspectRatio: 3 / 4),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Get.to(const ProductScreen());
              },
              child: Container(
                margin: const EdgeInsets.all(5),
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [BoxShadow(blurRadius: 3, color: black)]),
                child: Column(
                  children: [
                    SizedBox(
                        width: 100,
                        height: 100,
                        child: Image.asset(basicMobileImage[index])),
                    const Spacer(),
                    Text(
                      basicMobileName[index],
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        RatingBar.builder(
                          initialRating: 4.5,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 15,
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        const SizedBox(width: 5),
                        const CustomText(
                            text: '4.5',
                            color: black,
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            letterSpacing: 0)
                      ],
                    ),
                    const Spacer(),
                    Align(
                      alignment: Alignment.topLeft,
                      child: CustomText(
                          text: basicMobilePricing[index],
                          color: black,
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          letterSpacing: 0),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
