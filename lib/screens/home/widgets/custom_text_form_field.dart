import 'package:flutter/material.dart';
import 'package:merohealth/constants/MyColors.dart';
class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    required this.hinttext,
    required this.controller,
  }) : super(key: key);
  final String hinttext;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          hintText: "Search Symptoms",
          fillColor: MyColors.white,
          filled: true,
          border: OutlineInputBorder(
              borderSide: BorderSide(color: MyColors.black),
              borderRadius: BorderRadius.circular(8))),
      controller: controller,
    );
  }
}
