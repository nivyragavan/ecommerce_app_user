import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_user_app/constant/colors.dart';
import 'package:ecommerce_user_app/view/add_address_screen.dart';
import 'package:ecommerce_user_app/view/main_screen_tabs/cart_screen.dart';
import 'package:ecommerce_user_app/view/wishlist_screen.dart';
import 'package:ecommerce_user_app/widgets/custom_elevated_button.dart';
import 'package:ecommerce_user_app/widgets/custom_icon_button.dart';
import 'package:ecommerce_user_app/widgets/custom_text.dart';
import 'package:ecommerce_user_app/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  bool pressed = true;
  int activeIndex = 0;

  int selectedValue = 0;

  final productCarousel = [
    'assets/images/mobile.png',
    'assets/images/mobile.png',
    'assets/images/mobile.png',
    'assets/images/mobile.png',
    'assets/images/mobile.png',
    'assets/images/mobile.png'
  ];

  String dropDownValue = 'Qty 1';

  var items = [
    'Qty 1',
    'Qty 2',
    'Qty 3',
    'Qty 4',
    'Qty 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBlue,
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildAddressButton(),
            buildProductDetailsCarousel(),
            const SizedBox(height: 7),
            const Divider(thickness: 4),
            buildPricingDetails(),
            const SizedBox(height: 7),
            const Divider(thickness: 4),
            const SizedBox(height: 7),
            buildBackOffers(),
            const SizedBox(height: 7),
            const Divider(thickness: 4),
            const SizedBox(height: 7),
            buildAddCart(),
            const Divider(thickness: 4),
            const SizedBox(height: 7),
            buildProductDetails(),
            const SizedBox(height: 7),
            const Divider(thickness: 4),
            const SizedBox(height: 7),
            buildCustomerRatings()
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

  buildProductDetailsCarousel() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              CustomTextButton(
                  text: 'Visit Store',
                  letterSpacing: 0,
                  fontWeight: FontWeight.bold,
                  onPressed: () {},
                  textColor: blue,
                  fontSize: 15),
              const Spacer(),
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
                  color: blue,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0)
            ],
          ),
          const CustomText(
              text:
                  'Samsung Galaxy M53 5G (Mystique Green, 6GB, 128GB Storage) | 108MP | sAmoled+ 120Hz | 12GB RAM with RAM Plus | Travel Adapter to be Purchased Separately',
              color: black,
              fontSize: 15,
              fontWeight: FontWeight.normal,
              letterSpacing: 0),
          const SizedBox(height: 10),
          SizedBox(
            width: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                    backgroundColor: white,
                    minRadius: 25,
                    child: CustomIconButton(
                        icon: Icons.share_outlined,
                        onPressed: () {},
                        iconColor: black,
                        iconSize: 25)),
                Expanded(
                  child: Column(
                    children: [
                      CarouselSlider.builder(
                          itemCount: productCarousel.length,
                          itemBuilder: (context, index, realIndex) {
                            final image = productCarousel[index];
                            return buildProductImage(image, index);
                          },
                          options: CarouselOptions(
                              viewportFraction: 1,
                              height: 400,
                              onPageChanged: (index, reason) => setState(() {
                                    activeIndex = index;
                                  }))),
                      buildIndicator()
                    ],
                  ),
                ),
                CircleAvatar(
                    backgroundColor: white,
                    minRadius: 25,
                    child: CustomIconButton(
                        icon: pressed ? Icons.favorite_border : Icons.favorite,
                        onPressed: () {
                          setState(() {
                            pressed = !pressed;
                          });
                        },
                        iconColor: pressed ? black : Colors.red,
                        iconSize: 25))
              ],
            ),
          )
        ],
      ),
    );
  }

  buildProductImage(String image, int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.asset(image),
    );
  }

  buildIndicator() {
    return AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: productCarousel.length,
      effect:
          const SlideEffect(dotWidth: 7, dotHeight: 7, activeDotColor: blue),
    );
  }

  buildPricingDetails() {
    return Container(
      width: Get.width,
      margin: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                  text: TextSpan(
                      text: '-20% ',
                      style:
                          TextStyle(color: Colors.red.shade900, fontSize: 25),
                      children: const [
                    TextSpan(
                        text: ' \u{20B9} 26,499',
                        style: TextStyle(color: black, fontSize: 25))
                  ])),
              CustomTextButton(
                  text: 'EMI options',
                  letterSpacing: 0,
                  fontWeight: FontWeight.bold,
                  onPressed: () {
                    buildEmiBottomSheet();
                  },
                  textColor: blue,
                  fontSize: 15)
            ],
          ),
          RichText(
              text: TextSpan(
                  text: 'M.R.P: ',
                  style: TextStyle(color: Colors.grey.shade600, fontSize: 15),
                  children: [
                TextSpan(
                    text: ' \u{20B9} 32,999',
                    style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 15,
                        decoration: TextDecoration.lineThrough))
              ])),
          const SizedBox(height: 10),
          const CustomText(
              text: 'Inclusive of all taxes',
              color: black,
              fontSize: 17,
              fontWeight: FontWeight.normal,
              letterSpacing: 0),
          const SizedBox(height: 10),
          const CustomText(
              text: 'EMI starts at \u{20B9}1,266. No Cost EMI available',
              color: black,
              fontSize: 17,
              fontWeight: FontWeight.normal,
              letterSpacing: 0),
        ],
      ),
    );
  }

  buildBackOffers() {
    return Container(
      width: Get.width,
      margin: const EdgeInsets.all(8),
      child: Column(
        children: [
          Row(
            children: const [
              Icon(Icons.local_offer_outlined),
              SizedBox(width: 10),
              CustomText(
                  text: 'Offers',
                  color: black,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0)
            ],
          ),
          SizedBox(
            height: 160,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.all(10),
                    padding:
                        const EdgeInsets.only(right: 10, left: 10, top: 10),
                    width: 160,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: const [
                          BoxShadow(blurRadius: 3, color: black)
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CustomText(
                            text: 'Bank Offers',
                            color: black,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0),
                        const SizedBox(height: 10),
                        const Text(
                          'Flat INR 2500 Instant Discount on ICICI Bank Credit Cards (excluding Amazon Pay ICICI Credit Card) Credit Card Transactions. Minimum purchase value INR 21200',
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                        ),
                        CustomTextButton(
                            text: '3 offers',
                            letterSpacing: 0,
                            fontWeight: FontWeight.bold,
                            onPressed: () {
                              buildBankOfferBottomSheet();
                            },
                            textColor: blue,
                            fontSize: 17)
                      ],
                    ),
                  );
                }),
          )
        ],
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
                                Get.to(const AddAddressScreen());
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

  buildEmiBottomSheet() {
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
                        const CustomText(
                            text: 'EMI Options',
                            color: black,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const CustomText(
                                text: 'Offer 1',
                                color: black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0),
                            CustomTextButton(
                                text: 'See Details',
                                letterSpacing: 0,
                                fontWeight: FontWeight.bold,
                                onPressed: () {},
                                textColor: blue,
                                fontSize: 15)
                          ],
                        ),
                        const CustomText(
                            text:
                                'Upto ₹1,683.60 EMI interest savings on select Credit Cards',
                            color: black,
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            letterSpacing: 0),
                        const Divider(color: black),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const CustomText(
                                text: 'Offer 2',
                                color: black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0),
                            CustomTextButton(
                                text: 'See Details',
                                letterSpacing: 0,
                                fontWeight: FontWeight.bold,
                                onPressed: () {},
                                textColor: blue,
                                fontSize: 15)
                          ],
                        ),
                        const CustomText(
                            text: 'No Cost EMI available on Amazon Pay Later.',
                            color: black,
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            letterSpacing: 0)
                      ])),
            ],
          ),
        ),
      ),
    );
  }

  buildBankOfferBottomSheet() {
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
                        const CustomText(
                            text: 'Bank Offers',
                            color: black,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const CustomText(
                                text: 'Offer 1',
                                color: black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0),
                            CustomTextButton(
                                text: 'See Details',
                                letterSpacing: 0,
                                fontWeight: FontWeight.bold,
                                onPressed: () {},
                                textColor: blue,
                                fontSize: 15)
                          ],
                        ),
                        const CustomText(
                            text:
                                'Flat INR 2500 Instant Discount on ICICI Bank Credit Cards (excluding Amazon Pay ICICI Credit Card) Credit Card Transactions. Minimum purchase value INR 21200',
                            color: black,
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            letterSpacing: 0),
                        const Divider(color: black),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const CustomText(
                                text: 'Offer 2',
                                color: black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0),
                            CustomTextButton(
                                text: 'See Details',
                                letterSpacing: 0,
                                fontWeight: FontWeight.bold,
                                onPressed: () {},
                                textColor: blue,
                                fontSize: 15)
                          ],
                        ),
                        const CustomText(
                            text:
                                'Flat INR 2500 Instant Discount on ICICI Bank Debit Card Transactions. Minimum purchase value INR 21200',
                            color: black,
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            letterSpacing: 0),
                        const Divider(color: black),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const CustomText(
                                text: 'Offer 3',
                                color: black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0),
                            CustomTextButton(
                                text: 'See Details',
                                letterSpacing: 0,
                                fontWeight: FontWeight.bold,
                                onPressed: () {},
                                textColor: blue,
                                fontSize: 15)
                          ],
                        ),
                        const CustomText(
                            text:
                                '5% Instant Discount up to INR 250 on HSBC Cashback Card Credit Card Transactions. Minimum purchase value INR 1000',
                            color: black,
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            letterSpacing: 0)
                      ])),
            ],
          ),
        ),
      ),
    );
  }

  buildAddCart() {
    return Container(
      width: Get.width,
      margin: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomText(
              text: 'Total: \u{20B9} 26,499',
              color: black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              letterSpacing: 0),
          const SizedBox(height: 10),
          RichText(
              text: const TextSpan(
                  text: 'FREE Delivery ',
                  style: TextStyle(fontSize: 17, color: blue),
                  children: [
                TextSpan(
                  text: 'Wednesday, 31 August.',
                  style: TextStyle(
                      fontSize: 17, color: black, fontWeight: FontWeight.bold),
                )
              ])),
          const SizedBox(height: 10),
          RichText(
              text: const TextSpan(
                  text: 'Or fastest delivery ',
                  style: TextStyle(fontSize: 17, color: black),
                  children: [
                TextSpan(
                  text: 'Tomorrow, 30 August.',
                  style: TextStyle(
                      fontSize: 17, color: black, fontWeight: FontWeight.bold),
                )
              ])),
          const SizedBox(height: 10),
          SizedBox(
            width: 100,
            child: DropdownButtonFormField(
              value: dropDownValue,
              decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: blue, width: 2))),
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  dropDownValue = newValue!;
                });
              },
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: blue,
                      minimumSize: Size(Get.width * 0.45, 45)),
                  onPressed: () {
                    Get.to(const CartScreen());
                  },
                  child: const Text(
                    'Add to Cart',
                    style: TextStyle(
                        fontSize: 17,
                        color: black,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: black,
                      minimumSize: Size(Get.width * 0.45, 45)),
                  onPressed: () {},
                  child: const Text(
                    'Buy Now',
                    style: TextStyle(
                        fontSize: 17,
                        color: blue,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1),
                  ))
            ],
          ),
          CustomTextButton(
              text: 'Add to Wishlist',
              letterSpacing: 1,
              fontWeight: FontWeight.bold,
              onPressed: () {
                Get.to(const WishlistScreen());
              },
              textColor: blue,
              fontSize: 17)
        ],
      ),
    );
  }

  buildProductDetails() {
    return Container(
      width: Get.width,
      margin: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomText(
              text: 'Details',
              color: black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              letterSpacing: 0),
          const SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SizedBox(
                width: 150,
                child: CustomText(
                    text: 'Brand',
                    color: Colors.black45,
                    fontSize: 17,
                    fontWeight: FontWeight.normal,
                    letterSpacing: 0),
              ),
              CustomText(
                  text: 'Samsung',
                  color: black,
                  fontSize: 17,
                  fontWeight: FontWeight.normal,
                  letterSpacing: 0),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SizedBox(
                width: 150,
                child: CustomText(
                    text: 'Model Name',
                    color: Colors.black45,
                    fontSize: 17,
                    fontWeight: FontWeight.normal,
                    letterSpacing: 0),
              ),
              CustomText(
                  text: 'Samsung Galaxy M53 5G',
                  color: black,
                  fontSize: 17,
                  fontWeight: FontWeight.normal,
                  letterSpacing: 0),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SizedBox(
                width: 150,
                child: CustomText(
                    text: 'Model Number',
                    color: Colors.black45,
                    fontSize: 17,
                    fontWeight: FontWeight.normal,
                    letterSpacing: 0),
              ),
              CustomText(
                  text: 'SM-M536BZGEINU',
                  color: black,
                  fontSize: 17,
                  fontWeight: FontWeight.normal,
                  letterSpacing: 0),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SizedBox(
                width: 150,
                child: CustomText(
                    text: 'OS',
                    color: Colors.black45,
                    fontSize: 17,
                    fontWeight: FontWeight.normal,
                    letterSpacing: 0),
              ),
              CustomText(
                  text: 'Android 12.0',
                  color: black,
                  fontSize: 17,
                  fontWeight: FontWeight.normal,
                  letterSpacing: 0),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SizedBox(
                width: 150,
                child: CustomText(
                    text: 'CPU Speed',
                    color: Colors.black45,
                    fontSize: 17,
                    fontWeight: FontWeight.normal,
                    letterSpacing: 0),
              ),
              CustomText(
                  text: '2.4 GHz',
                  color: black,
                  fontSize: 17,
                  fontWeight: FontWeight.normal,
                  letterSpacing: 0),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SizedBox(
                width: 150,
                child: CustomText(
                    text: 'Battery Power (In mAH)',
                    color: Colors.black45,
                    fontSize: 17,
                    fontWeight: FontWeight.normal,
                    letterSpacing: 0),
              ),
              CustomText(
                  text: '5000',
                  color: black,
                  fontSize: 17,
                  fontWeight: FontWeight.normal,
                  letterSpacing: 0),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SizedBox(
                width: 150,
                child: CustomText(
                    text: 'Battery type',
                    color: Colors.black45,
                    fontSize: 17,
                    fontWeight: FontWeight.normal,
                    letterSpacing: 0),
              ),
              CustomText(
                  text: 'Lithium Ion',
                  color: black,
                  fontSize: 17,
                  fontWeight: FontWeight.normal,
                  letterSpacing: 0),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SizedBox(
                width: 150,
                child: CustomText(
                    text: 'Item Dimensions',
                    color: Colors.black45,
                    fontSize: 17,
                    fontWeight: FontWeight.normal,
                    letterSpacing: 0),
              ),
              CustomText(
                  text: '0.7 x 7.7 x 16.5 cm',
                  color: black,
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  letterSpacing: 0),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SizedBox(
                width: 150,
                child: CustomText(
                    text: 'RAM',
                    color: Colors.black45,
                    fontSize: 17,
                    fontWeight: FontWeight.normal,
                    letterSpacing: 0),
              ),
              CustomText(
                  text: '6 GB',
                  color: black,
                  fontSize: 17,
                  fontWeight: FontWeight.normal,
                  letterSpacing: 0),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SizedBox(
                width: 150,
                child: CustomText(
                    text: 'Inbuilt Storage (in GB)',
                    color: Colors.black45,
                    fontSize: 17,
                    fontWeight: FontWeight.normal,
                    letterSpacing: 0),
              ),
              CustomText(
                  text: '128 GB',
                  color: black,
                  fontSize: 17,
                  fontWeight: FontWeight.normal,
                  letterSpacing: 0),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SizedBox(
                width: 150,
                child: CustomText(
                    text: 'Screen Size',
                    color: Colors.black45,
                    fontSize: 17,
                    fontWeight: FontWeight.normal,
                    letterSpacing: 0),
              ),
              CustomText(
                  text: '6.7 inches',
                  color: black,
                  fontSize: 17,
                  fontWeight: FontWeight.normal,
                  letterSpacing: 0),
            ],
          )
        ],
      ),
    );
  }

  buildCustomerRatings() {
    return Container(
      width: Get.width,
      margin: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomText(
                  text: 'Customer Reviews',
                  color: black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0),
              const SizedBox(height: 15),
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
                      text: '4.5 out of 5',
                      color: black,
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                      letterSpacing: 0)
                ],
              ),
              const SizedBox(height: 10),
              const CustomText(
                  text: '12,345 global ratings',
                  color: black,
                  fontSize: 17,
                  fontWeight: FontWeight.normal,
                  letterSpacing: 0)
            ],
          ),
          const Icon(
            Icons.chevron_right,
            size: 30,
          )
        ],
      ),
    );
  }
}
