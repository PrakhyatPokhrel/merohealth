import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:merohealth/screens/home/widgets/custom_text_form_field.dart';

class FormFieldWithTitle extends StatelessWidget {
  const FormFieldWithTitle({Key? key, required this.hinttext, required this.controller}) : super(key: key);
  final String hinttext;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
        CustomTextFormField(hinttext: hinttext, controller: controller)
      ],
    );
  }
}
