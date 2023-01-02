import 'package:ecommerce_user_app/constant/colors.dart';
import 'package:ecommerce_user_app/view/added_wishlist_screen.dart';
import 'package:ecommerce_user_app/widgets/custom_appbar.dart';
import 'package:ecommerce_user_app/widgets/custom_border_textfield.dart';
import 'package:ecommerce_user_app/widgets/custom_elevated_button.dart';
import 'package:ecommerce_user_app/widgets/custom_icon_button.dart';
import 'package:ecommerce_user_app/widgets/custom_text.dart';
import 'package:ecommerce_user_app/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBlue,
      appBar: const CustomAppBar(title: 'Your Wish List'),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CustomText(
                      text: 'Wish List',
                      color: black,
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                      letterSpacing: 1),
                  CustomTextButton(
                    text: '+ Create new list',
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                    onPressed: () {
                      buildCreateList();
                    },
                    textColor: blue,
                    fontSize: 17,
                  )
                ],
              ),
              const SizedBox(height: 5),
              const Divider(
                color: blue,
                thickness: 1,
              ),
              const SizedBox(height: 5),
              buildWishListTile()
            ],
          ),
        ),
      ),
    );
  }

  buildCreateList() {
    return Get.bottomSheet(SingleChildScrollView(
      child: SizedBox(
        width: Get.width,
        height: 300,
        child: Column(
          children: [
            CustomIconButton(
                icon: Icons.cancel_rounded,
                onPressed: () {
                  Get.back();
                },
                iconColor: white,
                iconSize: 30),
            const SizedBox(height: 10),
            Container(
              width: Get.width,
              height: 258,
              color: white,
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomText(
                      text: 'Create a new wish list',
                      color: black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1),
                  const SizedBox(height: 20),
                  const CustomBorderTextField(
                      labelText: 'List Name',
                      hintText: 'Enter your new list name',
                      labelTextColor: black,
                      borderColor: black,
                      borderRadius: 5,
                      cursorColor: black,
                      labelTextSize: 17,
                      focusedBorderColor: black,
                      focusedBorderWidth: 2,
                      keyboardType: TextInputType.text),
                  const SizedBox(height: 15),
                  const CustomText(
                      text:
                          'Create a new wish list and save your favourite items for later.',
                      color: black,
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                      letterSpacing: 1),
                  const SizedBox(height: 20),
                  Center(
                    child: CustomElevatedButton(
                        text: 'Create List',
                        textColor: black,
                        fontSize: 17,
                        buttonColor: blue,
                        onPressed: () {},
                        letterSpacing: 2,
                        borderRadius: 5,
                        verticalPadding: 10,
                        horizontalPadding: 15,
                        fontWeight: FontWeight.normal),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }

  buildWishListTile() {
    return SizedBox(
      height: Get.height,
      child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Image.asset('assets/images/mobile.png'),
              title: const Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: Text('Shopping List'),
              ),
              subtitle: const Text('Private'),
              onTap: () {
                Get.to(const AddedWishlistScreen());
              },
            );
          }),
    );
  }
}
