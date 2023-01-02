import 'dart:io';
import 'package:ecommerce_user_app/constant/colors.dart';
import 'package:ecommerce_user_app/service/camera.dart';
import 'package:ecommerce_user_app/view/account_screen.dart';
import 'package:ecommerce_user_app/widgets/custom_appbar.dart';
import 'package:ecommerce_user_app/widgets/custom_elevated_icon_button.dart';
import 'package:ecommerce_user_app/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';


class LoginSettingsScreen extends StatefulWidget {
  const LoginSettingsScreen({Key? key}) : super(key: key);

  @override
  State<LoginSettingsScreen> createState() => _LoginSettingsScreenState();
}

class _LoginSettingsScreenState extends State<LoginSettingsScreen> {
  File? profileImage;

  int clickedDocType = 0;

  void pickImage(int type) async {
    File? imageFile;
    if (type == 0) {
      imageFile = await cameraImage();
    } else {
      imageFile = await galleryImage();
    }
    print(imageFile);
    print(clickedDocType);
    setState(() {
      profileImage = imageFile;
    });
  }

  Future<File?> galleryImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return null;
      final imageTemp = File(image.path);
      return imageTemp;
    } on PlatformException catch (e) {
      print('failed to pick image: $e');
      return null;
    }
  }

  Future<File?> cameraImage() async {
    try {
      final image = await Get.to(const TakePhoto());
      if (image == null) return null;
      final imageTemp = File(image.path);
      return imageTemp;
    } on PlatformException catch (e) {
      print('failed to pick image: $e');
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBlue,
      appBar: const CustomAppBar(title: 'Login Settings'),
      body: Padding(padding: const EdgeInsets.all(15), child: buildProfile()),
    );
  }

  buildProfile() {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 30),
          GestureDetector(
            onTap: () {
              buildBottomSheet();
            },
            child: Center(
                child: ClipOval(
              child: SizedBox.fromSize(
                size: const Size.fromRadius(60), // Image radius
                child: profileImage != null
                    ? Image.file(
                        profileImage!,
                        fit: BoxFit.cover,
                      )
                    : Image.asset(
                        'assets/images/profile.png',
                        fit: BoxFit.cover,
                      ),
              ),
            )),
          ),
          const SizedBox(height: 20),
          const CustomTextField(
              text: 'Name',
              iconColor: black,
              cursorColor: black,
              icon: Icons.person_outline_outlined,
              filled: true,
              fillColor: white,
              keyboardType: TextInputType.text),
          const SizedBox(height: 20),
          const CustomTextField(
              text: 'Phone Number',
              iconColor: black,
              cursorColor: black,
              icon: Icons.phone,
              filled: true,
              fillColor: white,
              keyboardType: TextInputType.number),
          const SizedBox(height: 20),
          const CustomTextField(
              text: 'Email Address',
              iconColor: black,
              cursorColor: black,
              icon: Icons.mail_outline,
              filled: true,
              fillColor: white,
              keyboardType: TextInputType.text),
          const SizedBox(height: 20),
          const CustomTextField(
              text: 'Password',
              iconColor: black,
              cursorColor: black,
              icon: Icons.password,
              filled: true,
              fillColor: white,
              keyboardType: TextInputType.text),
          const SizedBox(height: 40),
          CustomElevatedIconButton(
              text: 'Save',
              textColor: black,
              iconColor: black,
              fontSize: 20,
              buttonColor: blue,
              icon: Icons.save_alt_outlined,
              onPressed: () {
                Get.to(const AccountScreen());
              },
              letterSpacing: 1,
              borderRadius: 25,
              verticalPadding: 10,
              horizontalPadding: 15,
              fontWeight: FontWeight.bold),
        ],
      ),
    );
  }

  buildBottomSheet() {
    return Get.bottomSheet(Container(
      height: 60,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton.icon(
              onPressed: () {
                Get.back();
                pickImage(0);
              },
              icon: const Icon(
                Icons.camera_outlined,
                color: Colors.black,
                size: 30,
              ),
              label: const Text(
                'Camera',
                style: TextStyle(
                    color: blue, fontSize: 20, fontWeight: FontWeight.bold),
              )),
          TextButton.icon(
              onPressed: () {
                Get.back();
                pickImage(1);
              },
              icon: const Icon(
                Icons.image_outlined,
                color: Colors.black,
                size: 30,
              ),
              label: const Text(
                'Gallery',
                style: TextStyle(
                    color: blue, fontSize: 20, fontWeight: FontWeight.bold),
              ))
        ],
      ),
    ));
  }
}
