import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:merohealth/constants/MyColors.dart';


class MyTitle extends StatelessWidget {
  const MyTitle({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: 395.w,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: MyColors.white, borderRadius: BorderRadius.circular(5)),
      child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.sp),
      ),
    );
  }
}
