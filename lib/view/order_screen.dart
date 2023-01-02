import 'package:ecommerce_user_app/constant/colors.dart';
import 'package:ecommerce_user_app/view/order_product_screen.dart';
import 'package:ecommerce_user_app/view/refunded_screen.dart';
import 'package:ecommerce_user_app/widgets/custom_text.dart';
import 'package:ecommerce_user_app/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBlue,
      appBar: buildAppBar(),
      body: buildOrders(),
    );
  }

  buildAppBar() {
    return AppBar(
      backgroundColor: blue,
      automaticallyImplyLeading: false,
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

  buildOrders() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 15),
          const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: CustomText(
                text: 'Your Orders',
                color: black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                letterSpacing: 1),
          ),
          const SizedBox(height: 7),
          const Divider(thickness: 2),
          const CustomTextField(
              text: 'Search your orders',
              iconColor: blue,
              cursorColor: black,
              icon: Icons.search,
              filled: true,
              fillColor: lightBlue,
              keyboardType: TextInputType.text),
          const Divider(thickness: 2),
          const SizedBox(height: 7),
          const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: CustomText(
                text: 'Past 5 months',
                color: black,
                fontSize: 17,
                fontWeight: FontWeight.normal,
                letterSpacing: 1),
          ),
          const SizedBox(height: 7),
          const Divider(thickness: 2),
          GestureDetector(
            onTap: () {
              Get.to(const OrderProductScreen());
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    width: 100,
                    margin: const EdgeInsets.only(left: 10, right: 10),
                    child: Image.asset('assets/images/mobile.png')),
                Container(
                  width: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Samsung Galaxy M53 5G (Mystique Green, 6GB, 128GB Storage) | 108MP | sAmoled+ 120Hz | 12GB RAM with RAM Plus | Travel Adapter to be Purchased Separately',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        softWrap: false,
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      CustomText(
                          text: 'Delivered 30-Jun-2022',
                          color: Colors.black45,
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          letterSpacing: 0)
                    ],
                  ),
                ),
                const Icon(Icons.chevron_right, size: 30, color: black)
              ],
            ),
          ),
          const Divider(thickness: 2),
          GestureDetector(
            onTap: () {
              Get.to(const RefundedScreen());
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    width: 100,
                    margin: const EdgeInsets.only(left: 10, right: 10),
                    child: Image.asset('assets/images/mobile.png')),
                Container(
                  width: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      CustomText(
                          text: 'Refunded',
                          color: black,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0),
                      SizedBox(height: 10),
                      CustomText(
                          text:
                              'Your return is in transit. Your refund has been issued',
                          color: Colors.black45,
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          letterSpacing: 0),
                    ],
                  ),
                ),
                const Icon(Icons.chevron_right, size: 30, color: black)
              ],
            ),
          ),
          const Divider(thickness: 2),
        ],
      ),
    );
  }
}
