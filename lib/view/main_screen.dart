import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:ecommerce_user_app/constant/colors.dart';
import 'package:ecommerce_user_app/view/main_screen_tabs/cart_screen.dart';
import 'package:ecommerce_user_app/view/main_screen_tabs/category_screen.dart';
import 'package:ecommerce_user_app/view/main_screen_tabs/home_screen.dart';
import 'package:ecommerce_user_app/view/main_screen_tabs/profile_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  ScrollController? controller;

  int currentIndex = 0;

  final screens = [
    const HomeScreen(),
    const CategoryScreen(),
    const CartScreen(),
    const ProfileScreen()
  ];

  @override
  void initState() {
    super.initState();
    controller = ScrollController();
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavyBar(
          selectedIndex: currentIndex,
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
                icon: const Icon(Icons.home_outlined),
                title: const Text(
                  'Home',
                  style: TextStyle(fontSize: 17),
                ),
                activeColor: blue,
                inactiveColor: Colors.black,
                textAlign: TextAlign.center),
            BottomNavyBarItem(
                icon: const Icon(Icons.grid_view_outlined),
                title: const Text('category', style: TextStyle(fontSize: 17)),
                activeColor: blue,
                inactiveColor: Colors.black,
                textAlign: TextAlign.center),
            BottomNavyBarItem(
                icon: const Icon(Icons.add_shopping_cart),
                title: const Text('Cart', style: TextStyle(fontSize: 17)),
                activeColor: blue,
                inactiveColor: Colors.black,
                textAlign: TextAlign.center),
            BottomNavyBarItem(
                icon: const Icon(Icons.perm_identity),
                title: const Text('Profile', style: TextStyle(fontSize: 17)),
                activeColor: blue,
                inactiveColor: Colors.black,
                textAlign: TextAlign.center)
          ],
          onItemSelected: (index) {
            setState(() {
              currentIndex = index;
            });
          }),
      body: screens[currentIndex],
    );
  }
}
