import 'package:ecommerce_user_app/constant/colors.dart';
import 'package:ecommerce_user_app/widgets/custom_appbar.dart';
import 'package:ecommerce_user_app/widgets/custom_border_textfield.dart';
import 'package:ecommerce_user_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

class AddAddressScreen extends StatefulWidget {
  const AddAddressScreen({Key? key}) : super(key: key);

  static const districtList = [
    "Ariyalur",
    "Chengalpattu",
    "Chennai",
    "Coimbatore",
    "Cuddalore",
    "Dharmapuri",
    "Dindigul",
    "Erode",
    "Kallakurichi",
    "Kanchipuram",
    "Kanyakumari",
    "Karur",
    "Krishnagiri",
    "Madurai",
    "Mayiladuthurai",
    "Nagapattinam",
    "Namakkal",
    "Nilgiris",
    "Perambalur",
    "Pondicherry",
    "Pudukkottai",
    "Ramanathapuram",
    "Ranipet",
    "Salem",
    "Sivagangai",
    "Tenkasi",
    "Thanjavur",
    "Theni",
    "Thoothukudi",
    "Tiruchirappalli",
    "Tirunelveli",
    "Tirupattur",
    "Tiruppur",
    "Tiruvallur",
    "Tiruvannamalai",
    "Tiruvarur",
    "Vellore",
    "Viluppuram",
    "Virudhunagar"
  ];

  static const stateList = [
    "Andhra Pradesh",
    "Arunachal Pradesh",
    "Assam",
    "Bihar",
    "Chhattisgarh",
    "Goa",
    "Gujarat",
    "Erode",
    "Haryana",
    "Himachal Pradesh",
    "Jharkhand",
    "Karnataka",
    "Kerala",
    "Madurai",
    "Madhya Pradesh",
    "Maharashtra",
    "Manipur",
    "Meghalaya",
    "Mizoram",
    "Nagaland",
    "Odisha",
    "Punjab",
    "Rajasthan",
    "Salem",
    "Sikkim",
    "Tamil Nadu",
    "Telangana",
    "Tripura",
    "Uttar Pradesh",
    "Uttarakhand"
  ];

  @override
  State<AddAddressScreen> createState() => _AddAddressScreenState();
}

class _AddAddressScreenState extends State<AddAddressScreen> {
  final district = TextEditingController();
  final state = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBlue,
      appBar: const CustomAppBar(title: 'Add Address'),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: buildEditAddress(),
      ),
    );
  }

  buildEditAddress() {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 15),
          const CustomBorderTextField(
              keyboardType: TextInputType.text,
              labelText: 'Name',
              hintText: 'Enter your full name',
              labelTextColor: black,
              borderColor: black,
              borderRadius: 5,
              cursorColor: black,
              labelTextSize: 17,
              focusedBorderColor: black,
              focusedBorderWidth: 2),
          const SizedBox(height: 15),
          const CustomBorderTextField(
              keyboardType: TextInputType.number,
              labelText: 'Phone Number',
              hintText: 'Enter your phone number',
              labelTextColor: black,
              borderColor: black,
              borderRadius: 5,
              cursorColor: black,
              labelTextSize: 17,
              focusedBorderColor: black,
              focusedBorderWidth: 2),
          const SizedBox(height: 15),
          const CustomBorderTextField(
              keyboardType: TextInputType.text,
              labelText: 'Flat / House No',
              hintText: 'Enter your Flat / House No',
              labelTextColor: black,
              borderColor: black,
              borderRadius: 5,
              cursorColor: black,
              labelTextSize: 17,
              focusedBorderColor: black,
              focusedBorderWidth: 2),
          const SizedBox(height: 15),
          const CustomBorderTextField(
              keyboardType: TextInputType.text,
              labelText: 'Area / Street',
              hintText: 'Enter your Area / Street',
              labelTextColor: black,
              borderColor: black,
              borderRadius: 5,
              cursorColor: black,
              labelTextSize: 17,
              focusedBorderColor: black,
              focusedBorderWidth: 2),
          const SizedBox(height: 15),
          const CustomBorderTextField(
              keyboardType: TextInputType.text,
              labelText: 'Landmark',
              hintText: 'Enter your Landmark',
              labelTextColor: black,
              borderColor: black,
              borderRadius: 5,
              cursorColor: black,
              labelTextSize: 17,
              focusedBorderColor: black,
              focusedBorderWidth: 2),
          const SizedBox(height: 15),
          TypeAheadFormField(
              textFieldConfiguration: TextFieldConfiguration(
                  cursorColor: black,
                  controller: district,
                  decoration: InputDecoration(
                    labelText: 'District',
                    labelStyle: const TextStyle(fontSize: 17, color: black),
                    hintText: 'Enter your district',
                    contentPadding: const EdgeInsets.all(10),
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: black),
                        borderRadius: BorderRadius.circular(5)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: black,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(5)),
                  )),
              suggestionsCallback: (pattern) {
                return AddAddressScreen.districtList.where((item) =>
                    item.toLowerCase().contains(pattern.toLowerCase()));
              },
              onSuggestionSelected: (String val) {
                district.text = val;
                print(val);
              },
              itemBuilder: (_, String item) {
                return ListTile(
                  title: Text(item),
                );
              },
              getImmediateSuggestions: true,
              hideSuggestionsOnKeyboardHide: false,
              hideOnEmpty: false,
              noItemsFoundBuilder: (context) => const Padding(
                    padding: EdgeInsets.all(8),
                    child: Text('No item found'),
                  ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter a valid district';
                }
                return null;
              }),
          const SizedBox(height: 15),
          TypeAheadFormField(
              textFieldConfiguration: TextFieldConfiguration(
                  cursorColor: black,
                  controller: state,
                  decoration: InputDecoration(
                    labelText: 'State',
                    labelStyle: const TextStyle(fontSize: 17, color: black),
                    hintText: 'Enter your state',
                    contentPadding: const EdgeInsets.all(10),
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: black),
                        borderRadius: BorderRadius.circular(5)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: black,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(5)),
                  )),
              suggestionsCallback: (pattern) {
                return AddAddressScreen.stateList.where((item) =>
                    item.toLowerCase().contains(pattern.toLowerCase()));
              },
              onSuggestionSelected: (String val) {
                state.text = val;
                print(val);
              },
              itemBuilder: (_, String item) {
                return ListTile(
                  title: Text(item),
                );
              },
              getImmediateSuggestions: true,
              hideSuggestionsOnKeyboardHide: false,
              hideOnEmpty: false,
              noItemsFoundBuilder: (context) => const Padding(
                    padding: EdgeInsets.all(8),
                    child: Text('No item found'),
                  ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter a valid state';
                }
                return null;
              }),
          const SizedBox(height: 15),
          const CustomBorderTextField(
              keyboardType: TextInputType.number,
              labelText: 'Pin Code',
              hintText: 'Enter your Pin Code',
              labelTextColor: black,
              borderColor: black,
              borderRadius: 5,
              cursorColor: black,
              labelTextSize: 17,
              focusedBorderColor: black,
              focusedBorderWidth: 2),
          const SizedBox(height: 30),
          CustomElevatedButton(
              text: 'Add',
              textColor: black,
              fontSize: 20,
              buttonColor: blue,
              onPressed: () {},
              letterSpacing: 1,
              borderRadius: 20,
              verticalPadding: 10,
              horizontalPadding: 15,
              fontWeight: FontWeight.bold)
        ],
      ),
    );
  }
}
