import 'package:flutter/material.dart';
import 'package:merohealth/screens/home/widgets/custom_back_button.dart';
import 'package:merohealth/screens/home/widgets/title.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(children: [
        CustomBackButton(),
        MyTitle(text: "Contact Us"),
        
      ]),
    ));
  }
}

class MyTextfield extends StatelessWidget {
  const MyTextfield({
    Key? key,
    required this.controller,
  }) : super(key: key);
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
    );
  }
}
