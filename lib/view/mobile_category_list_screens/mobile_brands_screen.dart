import 'package:ecommerce_user_app/constant/colors.dart';
import 'package:ecommerce_user_app/view/product_screen.dart';
import 'package:ecommerce_user_app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

class MobileBrandsScreen extends StatelessWidget {
  const MobileBrandsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBlue,
      appBar: buildAppBar(),
      body: buildMobileBrandsGrid(),
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

  buildMobileBrandsGrid() {
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
                        child: Image.asset(
                            'assets/images/mobile/androidphones/samsung.png')),
                    const Spacer(),
                    const Text(
                      'Samsung Galaxy A23 Blue, 6GB RAM, 128GB Storage with No Cost EMI/Additional Exchange Offers',
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
                    const Align(
                      alignment: Alignment.topLeft,
                      child: CustomText(
                          text: '\u{20B9} 18,499',
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
