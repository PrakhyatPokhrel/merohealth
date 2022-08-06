import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class HomePlaceWithTemperature extends StatelessWidget {
  const HomePlaceWithTemperature({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/images/home_bg.jpg",
        fit: BoxFit.fill,
        height: 240.h,
    width: 415.w,
        );
  }
}
