import 'package:ecommerce_user_app/constant/colors.dart';
import 'package:ecommerce_user_app/widgets/custom_text.dart';
import 'package:ecommerce_user_app/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderProductScreen extends StatelessWidget {
  const OrderProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBlue,
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildProductDetails(),
            const SizedBox(height: 7),
            const Divider(thickness: 4),
            const SizedBox(height: 7),
            buildReviewItem(),
            const SizedBox(height: 7),
            const Divider(thickness: 4),
            const SizedBox(height: 7),
            buildOrderInfo()
          ],
        ),
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

  buildProductDetails() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                  width: Get.width * 0.30,
                  child: Image.asset('assets/images/mobile.png')),
              SizedBox(
                width: Get.width * 0.62,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Samsung Galaxy M53 5G (Mystique Green, 6GB, 128GB Storage) | 108MP | sAmoled+ 120Hz | 12GB RAM with RAM Plus | Travel Adapter to be Purchased Separately',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        CustomTextButton(
                            text: 'Share this item',
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold,
                            onPressed: () {},
                            textColor: blue,
                            fontSize: 15),
                        const SizedBox(width: 5),
                        const Icon(
                          Icons.share_outlined,
                          size: 17,
                          color: blue,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          const Divider(thickness: 2),
          GestureDetector(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: CustomText(
                      text: 'buy it again',
                      color: black,
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                      letterSpacing: 1),
                ),
                Icon(Icons.chevron_right, size: 25)
              ],
            ),
          ),
          const Divider(thickness: 2),
        ],
      ),
    );
  }

  buildReviewItem() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomText(
              text: 'Tell us about the item',
              color: black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              letterSpacing: 1),
          const SizedBox(height: 5),
          const Divider(thickness: 2),
          GestureDetector(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: CustomText(
                      text: 'Write a product review',
                      color: black,
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                      letterSpacing: 1),
                ),
                Icon(Icons.chevron_right, size: 25)
              ],
            ),
          ),
          const Divider(thickness: 2),
          GestureDetector(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: CustomText(
                      text: 'leave a feedback',
                      color: black,
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                      letterSpacing: 1),
                ),
                Icon(Icons.chevron_right, size: 25)
              ],
            ),
          ),
          const Divider(thickness: 2),
        ],
      ),
    );
  }

  buildOrderInfo() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomText(
              text: 'order Info',
              color: black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              letterSpacing: 1),
          const SizedBox(height: 5),
          const Divider(thickness: 2),
          GestureDetector(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: CustomText(
                      text: 'View order details',
                      color: black,
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                      letterSpacing: 1),
                ),
                Icon(Icons.chevron_right, size: 25)
              ],
            ),
          ),
          const Divider(thickness: 2),
          GestureDetector(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: CustomText(
                      text: 'Download invoice',
                      color: black,
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                      letterSpacing: 1),
                ),
                Icon(Icons.chevron_right, size: 25)
              ],
            ),
          ),
          const Divider(thickness: 2),
        ],
      ),
    );
  }
}
