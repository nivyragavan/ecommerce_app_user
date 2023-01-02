import 'package:ecommerce_user_app/view/add_address_screen.dart';
import 'package:ecommerce_user_app/view/edit_address_screen.dart';
import 'package:ecommerce_user_app/widgets/custom_appbar.dart';
import 'package:ecommerce_user_app/widgets/custom_icon_button.dart';
import 'package:ecommerce_user_app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constant/colors.dart';

class AddressSettingsScreen extends StatelessWidget {
  const AddressSettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: lightBlue,
        appBar: const CustomAppBar(title: 'Address Settings'),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.to(const AddAddressScreen());
          },
          backgroundColor: blue,
          child: const Icon(
            Icons.add,
            color: black,
            size: 35,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(5),
          child: buildAddressSettings(),
        ));
  }

  buildAddressSettings() {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Card(
          elevation: 4,
          child: Padding(
            padding: const EdgeInsets.all(10),
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
                CustomIconButton(
                    icon: Icons.edit_outlined,
                    onPressed: () {
                      Get.to(const EditAddressScreen());
                    },
                    iconColor: black,
                    iconSize: 25)
              ],
            ),
          ),
        );
      },
    );
  }
}
