import 'package:ecommerce_user_app/constant/colors.dart';
import 'package:ecommerce_user_app/widgets/custom_elevated_button.dart';
import 'package:ecommerce_user_app/widgets/custom_icon_button.dart';
import 'package:ecommerce_user_app/widgets/custom_outlined_button.dart';
import 'package:ecommerce_user_app/widgets/custom_text.dart';
import 'package:ecommerce_user_app/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBlue,
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildAddressButton(),
            buildBuyButton(),
            const SizedBox(height: 7),
            const Divider(thickness: 2),
            const SizedBox(height: 7),
            buildAddedProduct(),
            const SizedBox(height: 7),
            const Divider(thickness: 2),
          ],
        ),
      ),
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

  buildAddressButton() {
    return GestureDetector(
      onTap: () {
        buildAddressBottomSheet();
      },
      child: Container(
        width: Get.width,
        height: 50,
        color: blue.withOpacity(0.3),
        child: Row(
          children: const [
            SizedBox(width: 5),
            Icon(Icons.location_on_outlined, color: black, size: 25),
            SizedBox(width: 3),
            CustomText(
                text: 'Deliver to Thiruvarur 610106',
                color: black,
                fontSize: 17,
                fontWeight: FontWeight.normal,
                letterSpacing: 0),
            SizedBox(width: 3),
            Icon(Icons.keyboard_arrow_down_outlined, color: black, size: 25)
          ],
        ),
      ),
    );
  }

  buildAddressBottomSheet() {
    return Get.bottomSheet(
      SingleChildScrollView(
        child: SizedBox(
          width: Get.width,
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
                  color: white,
                  padding: const EdgeInsets.all(8),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration:
                              BoxDecoration(border: Border.all(color: black)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 250,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    CustomText(
                                        text: 'M Bremi Nivedhaa',
                                        color: black,
                                        fontSize: 17,
                                        fontWeight: FontWeight.normal,
                                        letterSpacing: 0),
                                    SizedBox(height: 5),
                                    CustomText(
                                        text: '6382136965',
                                        color: black,
                                        fontSize: 17,
                                        fontWeight: FontWeight.normal,
                                        letterSpacing: 0),
                                    SizedBox(height: 5),
                                    CustomText(
                                        text:
                                            '3/229 Bajanamadam Street, Main Road, Alivalam, Thiruvarur, Tamil Nadu - 610106',
                                        color: black,
                                        fontSize: 17,
                                        fontWeight: FontWeight.normal,
                                        letterSpacing: 0)
                                  ],
                                ),
                              ),
                              Transform.scale(
                                scale: 1,
                                child: Radio(
                                    activeColor: blue,
                                    value: 1,
                                    groupValue: selectedValue,
                                    visualDensity: const VisualDensity(
                                        horizontal: -4.0, vertical: -4.0),
                                    onChanged: (value) => setState(() {
                                          selectedValue = 1;
                                        })),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration:
                              BoxDecoration(border: Border.all(color: black)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 250,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    CustomText(
                                        text: 'M Bremi Nivedhaa',
                                        color: black,
                                        fontSize: 17,
                                        fontWeight: FontWeight.normal,
                                        letterSpacing: 0),
                                    SizedBox(height: 5),
                                    CustomText(
                                        text: '6382136965',
                                        color: black,
                                        fontSize: 17,
                                        fontWeight: FontWeight.normal,
                                        letterSpacing: 0),
                                    SizedBox(height: 5),
                                    CustomText(
                                        text:
                                            '3/229 Bajanamadam Street, Main Road, Alivalam, Thiruvarur, Tamil Nadu - 610106',
                                        color: black,
                                        fontSize: 17,
                                        fontWeight: FontWeight.normal,
                                        letterSpacing: 0)
                                  ],
                                ),
                              ),
                              Transform.scale(
                                scale: 1,
                                child: Radio(
                                    activeColor: blue,
                                    value: 2,
                                    groupValue: selectedValue,
                                    visualDensity: const VisualDensity(
                                        horizontal: -4.0, vertical: -4.0),
                                    onChanged: (value) => setState(() {
                                          selectedValue = 2;
                                        })),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Center(
                          child: CustomElevatedButton(
                              text: 'Add Address',
                              textColor: black,
                              fontSize: 17,
                              buttonColor: blue,
                              onPressed: () {
                                // Get.to(const AddAddressScreen());
                              },
                              letterSpacing: 1,
                              borderRadius: 5,
                              verticalPadding: 10,
                              horizontalPadding: 15,
                              fontWeight: FontWeight.normal),
                        )
                      ])),
            ],
          ),
        ),
      ),
    );
  }

  buildBuyButton() {
    return Container(
      width: Get.width,
      margin: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
              text: const TextSpan(
                  text: 'Subtotal ',
                  style: TextStyle(color: black, fontSize: 20),
                  children: [
                TextSpan(
                    text: ' \u{20B9} 26,499',
                    style: TextStyle(
                        color: black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20))
              ])),
          Row(
            children: [
              const CustomText(
                  text: 'EMI Available',
                  color: black,
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  letterSpacing: 0),
              CustomTextButton(
                  text: 'Details',
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  onPressed: () {},
                  textColor: blue,
                  fontSize: 16)
            ],
          ),
          Row(
            children: const [
              Icon(Icons.check_circle, size: 25, color: blue),
              SizedBox(width: 5),
              CustomText(
                  text: 'Your order is eligible for FREE delivery.',
                  color: blue,
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  letterSpacing: 0)
            ],
          ),
          const SizedBox(height: 20),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: blue, minimumSize: Size(Get.width, 50)),
              onPressed: () {},
              child: const Text('Proceed to Buy',
                  style:
                      TextStyle(fontSize: 18, letterSpacing: 1, color: black)))
        ],
      ),
    );
  }

  buildAddedProduct() {
    return Container(
      width: Get.width,
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),
      color: white,
      child: Column(
        children: [
          Row(
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
                    const SizedBox(height: 10),
                    const CustomText(
                        text: '\u{20B9} 26,499',
                        color: black,
                        fontSize: 22,
                        fontWeight: FontWeight.normal,
                        letterSpacing: 0),
                    const SizedBox(height: 10),
                    Row(
                      children: const [
                        CustomText(
                            text: 'Size Name : ',
                            color: black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0),
                        CustomText(
                            text: '6 GB + 128 GB',
                            color: black,
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            letterSpacing: 0)
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: const [
                        CustomText(
                            text: 'Style Name : ',
                            color: black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0),
                        CustomText(
                            text: 'M53',
                            color: black,
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            letterSpacing: 0)
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: const [
                        CustomText(
                            text: 'Color : ',
                            color: black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0),
                        CustomText(
                            text: 'Mystique Green',
                            color: black,
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            letterSpacing: 0)
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomOutlinedButton(
                  backgroundColor: Colors.white,
                  fixedSize: Size(Get.width * 0.25, 40),
                  borderColor: blue,
                  onPressed: () {},
                  borderRadius: 5,
                  borderWidth: 1,
                  elevation: 5,
                  child: const CustomText(
                      text: 'Delete',
                      color: black,
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                      letterSpacing: 1)),
              CustomOutlinedButton(
                  backgroundColor: Colors.white,
                  fixedSize: Size(Get.width * 0.50, 40),
                  borderColor: blue,
                  onPressed: () {
                    // Get.to(const WishlistScreen());
                  },
                  borderRadius: 5,
                  borderWidth: 1,
                  elevation: 5,
                  child: const CustomText(
                      text: 'Save for Later',
                      color: black,
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                      letterSpacing: 1))
            ],
          )
        ],
      ),
    );
  }
}
