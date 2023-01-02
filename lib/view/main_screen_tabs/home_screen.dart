import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_user_app/constant/colors.dart';
import 'package:ecommerce_user_app/view/add_address_screen.dart';
import 'package:ecommerce_user_app/view/main_screen_tabs/cart_screen.dart';
import 'package:ecommerce_user_app/view/search_screen.dart';
import 'package:ecommerce_user_app/widgets/custom_elevated_button.dart';
import 'package:ecommerce_user_app/widgets/custom_icon_button.dart';
import 'package:ecommerce_user_app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int offerActiveIndex = 0;

  int categoryActiveIndex = 0;

  int mobileActiveIndex = 0;

  int selectedValue = 0;

  final mobileCarousel = [
    'assets/images/mobilescarousel/mobile1.jpg',
    'assets/images/mobilescarousel/mobile2.jpg',
    'assets/images/mobilescarousel/mobile3.jpg',
    'assets/images/mobilescarousel/mobile4.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBlue,
      body: CustomScrollView(
        slivers: [
          buildAppBar(),
          SliverList(
              delegate: SliverChildListDelegate([
            buildAddressButton(),
            const SizedBox(height: 10),
            buildCategoryHorizontalList(),
            buildMobilesCarousel(),
            const Divider(thickness: 4),
            const SizedBox(height: 10),
            buildClothingGrid(),
            const Divider(thickness: 4),
            const SizedBox(height: 10),
            buildAccessoriesGrid(),
            const SizedBox(height: 10),
            const Divider(thickness: 4),
          ]))
        ],
      ),
    );
  }

  buildAppBar() {
    return SliverAppBar(
      backgroundColor: blue,
      automaticallyImplyLeading: false,
      floating: true,
      pinned: true,
      snap: false,
      centerTitle: false,
      title: const Text('VTS'),
      actions: [
        IconButton(
          icon: const Icon(Icons.shopping_cart),
          onPressed: () {
            Get.to(const CartScreen());
          },
        ),
      ],
      bottom: AppBar(
        backgroundColor: blue,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: GestureDetector(
          onTap: () {
            Get.to(const SearchScreen());
          },
          child: Container(
              width: double.infinity,
              height: 40,
              color: Colors.white,
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(width: 10),
                  CustomText(
                      text: 'Search your products',
                      color: Colors.grey,
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                      letterSpacing: 0)
                ],
              )),
        ),
      ),
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

  buildCategoryHorizontalList() {
    return SizedBox(
      height: 140,
      child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  GestureDetector(
                    // onTap: () {
                    //   Get.to(KidsCategoryScreen());
                    // },
                    child: Container(
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [BoxShadow(blurRadius: 5, color: black)]),
                      child: const CircleAvatar(
                        backgroundColor: white,
                        radius: 40,
                        backgroundImage: AssetImage('assets/images/mobile.png'),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const SizedBox(
                    width: 80,
                    child: Center(
                      child: Text(
                        'Mobile',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }

  buildCarouselImage(String offers, int index) {
    return Container(
      width: Get.width,
      padding: const EdgeInsets.all(8.0),
      child: Image.asset(
        offers,
        fit: BoxFit.cover,
      ),
    );
  }

  buildAccessoriesGrid() {
    return Column(
      children: [
        const CustomText(
            text: 'Accessories for you',
            color: black,
            fontSize: 20,
            fontWeight: FontWeight.normal,
            letterSpacing: 1),
        const SizedBox(height: 20),
        GridView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 2,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 3 / 2),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  SizedBox(
                    width: Get.width,
                    height: 70,
                    child: Image.asset(
                      'assets/images/accessories.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 2),
                  const CustomText(
                      text: 'Mobile',
                      color: black,
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      letterSpacing: 1)
                ],
              );
            })
      ],
    );
  }

  buildClothingGrid() {
    return Column(
      children: [
        const CustomText(
            text: 'Clothing and much more',
            color: black,
            fontSize: 20,
            fontWeight: FontWeight.normal,
            letterSpacing: 1),
        const SizedBox(height: 20),
        GridView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 2,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 2 / 3),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  SizedBox(
                    width: Get.width,
                    height: 200,
                    child: Image.asset(
                      'assets/images/westernwomen.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 5),
                  CustomText(
                      text: 'Women',
                      color: black,
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      letterSpacing: 1)
                ],
              );
            })
      ],
    );
  }

  buildMobilesCarousel() {
    return Column(
      children: [
        CarouselSlider.builder(
            itemCount: mobileCarousel.length,
            itemBuilder: (context, index, realIndex) {
              final mobile = mobileCarousel[index];
              return buildCarouselImage(mobile, index);
            },
            options: CarouselOptions(
                viewportFraction: 1,
                height: 200,
                autoPlay: true,
                onPageChanged: (index, reason) => setState(() {
                      mobileActiveIndex = index;
                    }))),
        buildMobileIndicator()
      ],
    );
  }

  buildMobileIndicator() {
    return AnimatedSmoothIndicator(
      activeIndex: mobileActiveIndex,
      count: mobileCarousel.length,
      effect:
          const WormEffect(dotWidth: 10, dotHeight: 10, activeDotColor: blue),
    );
  }
}
