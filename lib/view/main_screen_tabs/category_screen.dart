import 'package:ecommerce_user_app/constant/colors.dart';
import 'package:ecommerce_user_app/view/category_list_screens/mobile_category_screen.dart';
import 'package:ecommerce_user_app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBlue,
      appBar: buildAppBar(),
      body: buildCategoriesGrid(),
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

  buildCategoriesGrid() {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(10),
      crossAxisSpacing: 15,
      mainAxisSpacing: 15,
      crossAxisCount: 2,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Get.to(MobileCategoryScreen());
          },
          child: Container(
            decoration: BoxDecoration(
                color: Colors.teal[100],
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(blurRadius: 5, color: Colors.black45)
                ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: Get.width,
                    height: 100,
                    child: Image.asset(
                      'assets/images/mobile.png',
                    ),
                  ),
                ),
                Container(
                  width: Get.width,
                  height: 40,
                  decoration: const BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10))),
                  child: const Center(
                    child: CustomText(
                        text: 'Mobile',
                        color: black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0),
                  ),
                )
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Get.to(MobileCategoryScreen());
          },
          child: Container(
            decoration: BoxDecoration(
                color: Colors.teal[100],
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(blurRadius: 5, color: Colors.black45)
                ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: Get.width,
                    height: 100,
                    child: Image.asset(
                      'assets/images/mobile.png',
                    ),
                  ),
                ),
                Container(
                  width: Get.width,
                  height: 40,
                  decoration: const BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10))),
                  child: const Center(
                    child: CustomText(
                        text: 'Mobile',
                        color: black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
