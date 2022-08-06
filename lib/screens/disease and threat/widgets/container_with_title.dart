import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:merohealth/constants/MyColors.dart';

class ContainerWithTitle extends StatelessWidget {
  const ContainerWithTitle({Key? key, required this.disease,required this.url}) : super(key: key);
  final String disease;
  final String url;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 250.h,
        width: 395.w,
        decoration: BoxDecoration(
            color: MyColors.white, borderRadius: BorderRadius.circular(10)),
        child: Column(children: [
          Title(
            color: MyColors.black,
            child: Text(
              disease,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.sp),
            ),
          ),
          Container(
              height: 200.h,
              width: 395.w,
              child: Image.network(
                url,
                fit: BoxFit.fill,
                scale: 0.2,
              ))
        ]),
      ),
    );
  }
}
