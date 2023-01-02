import 'package:ecommerce_user_app/constant/colors.dart';
import 'package:ecommerce_user_app/view/account_screen.dart';
import 'package:ecommerce_user_app/view/main_screen_tabs/cart_screen.dart';
import 'package:ecommerce_user_app/view/order_screen.dart';
import 'package:ecommerce_user_app/view/wishlist_screen.dart';
import 'package:ecommerce_user_app/widgets/custom_icon_button.dart';
import 'package:ecommerce_user_app/widgets/custom_outlined_button.dart';
import 'package:ecommerce_user_app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBlue,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              const SizedBox(height: 10),
              buildProfile(),
              const SizedBox(height: 20),
              buildOutlinedButtons(),
              const SizedBox(height: 10),
              const Divider(thickness: 1, color: blue),
              const SizedBox(height: 10),
              buildYourOrders(),
              const SizedBox(height: 10),
              const Divider(thickness: 1, color: blue),
              const SizedBox(height: 10),
              buildYourCart(),
              const SizedBox(height: 10),
              const Divider(thickness: 1, color: blue),
              const SizedBox(height: 10),
              buildYourWishList()
            ],
          ),
        ),
      ),
    );
  }

  buildProfile() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RichText(
            text: const TextSpan(
                text: 'Good Day, ',
                style: TextStyle(fontSize: 20, color: black, letterSpacing: 2),
                children: [
              TextSpan(
                  text: 'Nivy',
                  style: TextStyle(
                      fontSize: 20,
                      color: black,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2))
            ])),
        const CircleAvatar(
          radius: 25,
          backgroundColor: white,
          backgroundImage: AssetImage('assets/images/profile.png'),
        )
      ],
    );
  }

  buildOutlinedButtons() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomOutlinedButton(
                backgroundColor: white,
                fixedSize: const Size(160, 45),
                borderColor: blue,
                onPressed: () {
                   Get.to(const AccountScreen());
                },
                borderRadius: 25,
                borderWidth: 2,
                elevation: 5,
                child: const CustomText(
                    text: 'Your Account',
                    color: blue,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1)),
            CustomOutlinedButton(
                elevation: 5,
                backgroundColor: white,
                fixedSize: const Size(160, 45),
                borderColor: blue,
                onPressed: () {
                   Get.to(const OrderScreen());
                },
                borderRadius: 25,
                borderWidth: 2,
                child: const CustomText(
                    text: 'Your Orders',
                    color: blue,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1)),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomOutlinedButton(
                elevation: 5,
                backgroundColor: white,
                fixedSize: const Size(160, 45),
                borderColor: blue,
                onPressed: () {
                   Get.to(const CartScreen());
                },
                borderRadius: 25,
                borderWidth: 2,
                child: const CustomText(
                    text: 'Your Cart',
                    color: blue,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1)),
            CustomOutlinedButton(
                elevation: 5,
                backgroundColor: white,
                fixedSize: const Size(160, 45),
                borderColor: blue,
                onPressed: () {
                   Get.to(const WishlistScreen());
                },
                borderRadius: 25,
                borderWidth: 2,
                child: const CustomText(
                    text: 'Your Wish List',
                    color: blue,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1)),
          ],
        ),
      ],
    );
  }

  buildYourOrders() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CustomText(
                text: 'Your Orders',
                color: black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                letterSpacing: 1),
            CustomIconButton(
                icon: Icons.check_box_outlined,
                onPressed: () {
                   Get.to(const OrderScreen());
                },
                iconColor: black,
                iconSize: 30)
          ],
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 150,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/mobile.png'))),
                        ),
                        const CustomText(
                            text: 'Mobile',
                            color: black,
                            fontSize: 17,
                            fontWeight: FontWeight.normal,
                            letterSpacing: 0)
                      ],
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }

  buildYourCart() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CustomText(
                text: 'Your Cart',
                color: black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                letterSpacing: 1),
            CustomIconButton(
                icon: Icons.shopping_cart_outlined,
                onPressed: () {
                  Get.to(const CartScreen());
                },
                iconColor: black,
                iconSize: 30)
          ],
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 150,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/mobile.png'))),
                        ),
                        const CustomText(
                            text: 'Mobile',
                            color: black,
                            fontSize: 17,
                            fontWeight: FontWeight.normal,
                            letterSpacing: 0)
                      ],
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }

  buildYourWishList() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CustomText(
                text: 'Your Wish List',
                color: black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                letterSpacing: 1),
            CustomIconButton(
                icon: Icons.favorite_border,
                onPressed: () {
                   Get.to(const WishlistScreen());
                },
                iconColor: black,
                iconSize: 30)
          ],
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 150,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/mobile.png'))),
                        ),
                        const CustomText(
                            text: 'Mobile',
                            color: black,
                            fontSize: 17,
                            fontWeight: FontWeight.normal,
                            letterSpacing: 0)
                      ],
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
