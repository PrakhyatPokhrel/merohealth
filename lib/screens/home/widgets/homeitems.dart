import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:merohealth/constants/MyColors.dart';



class HomeItems extends StatelessWidget {
  const HomeItems({
    Key? key,
    required this.text,
    required this.route,
  }) : super(key: key);
  final String text;
  final String route;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,route
        );
      },
      child: Container(
        
        height: 50.h,
        width: 415.w,
        margin: EdgeInsets.all(2),
        decoration: BoxDecoration(color: MyColors.white,border: Border.all(
          color: MyColors.black
        ) ),
        child: Center(child: Text(text,style: TextStyle(
          fontWeight: FontWeight.bold
        ),)),
      ),
    );
  }
}
