import 'package:ecommerce_user_app/constant/colors.dart';
import 'package:ecommerce_user_app/view/product_screen.dart';
import 'package:ecommerce_user_app/widgets/custom_elevated_button.dart';
import 'package:ecommerce_user_app/widgets/custom_icon_button.dart';
import 'package:ecommerce_user_app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

class AddedWishlistScreen extends StatelessWidget {
  const AddedWishlistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBlue,
      appBar: buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
            child: Column(
          children: [
            const CustomText(
                text: 'Shopping List',
                color: black,
                fontSize: 17,
                fontWeight: FontWeight.normal,
                letterSpacing: 1),
            const SizedBox(height: 5),
            const Divider(
              color: blue,
              thickness: 1,
            ),
            const SizedBox(height: 5),
            buildAddedWishlist(),
          ],
        )),
      ),
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

  buildAddedWishlist() {
    return SizedBox(
        height: Get.height,
        child: ListView.builder(
            itemCount: 2,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Get.to(const ProductScreen());
                },
                child: Card(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: Get.width * 0.26,
                          child: Image.asset(
                            'assets/images/mobile.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(
                          width: Get.width * 0.56,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Samsung Galaxy M53 5G (Mystique Green, 6GB, 128GB Storage) | 108MP | sAmoled+ 120Hz | 12GB RAM with RAM Plus | Travel Adapter to be Purchased Separately',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                softWrap: false,
                              ),
                              const SizedBox(height: 5),
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
                                      text: '12,345',
                                      color: Colors.grey,
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                      letterSpacing: 0)
                                ],
                              ),
                              const SizedBox(height: 5),
                              Row(
                                children: const [
                                  CustomText(
                                      text: 'Size Name : ',
                                      color: Colors.grey,
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                      letterSpacing: 0),
                                  CustomText(
                                      text: '6 GB + 128 GB',
                                      color: Colors.grey,
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                      letterSpacing: 0)
                                ],
                              ),
                              const SizedBox(height: 5),
                              Row(
                                children: const [
                                  CustomText(
                                      text: 'Style Name : ',
                                      color: Colors.grey,
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                      letterSpacing: 0),
                                  CustomText(
                                      text: 'M53',
                                      color: Colors.grey,
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                      letterSpacing: 0)
                                ],
                              ),
                              const SizedBox(height: 5),
                              Row(
                                children: const [
                                  CustomText(
                                      text: 'Color : ',
                                      color: Colors.grey,
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                      letterSpacing: 0),
                                  CustomText(
                                      text: 'Mystique Green',
                                      color: Colors.grey,
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                      letterSpacing: 0)
                                ],
                              ),
                              const SizedBox(height: 5),
                              const CustomText(
                                  text: '\u{20B9} 26,499',
                                  color: black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal,
                                  letterSpacing: 0),
                              const SizedBox(height: 5),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomElevatedButton(
                                      text: 'Add to Cart',
                                      textColor: black,
                                      fontSize: 15,
                                      buttonColor: blue,
                                      onPressed: () {},
                                      letterSpacing: 1,
                                      borderRadius: 20,
                                      verticalPadding: 7,
                                      horizontalPadding: 15,
                                      fontWeight: FontWeight.normal),
                                  CustomIconButton(
                                      icon: Icons.delete_outline,
                                      onPressed: () {},
                                      iconColor: black,
                                      iconSize: 20)
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            }));
  }
}
