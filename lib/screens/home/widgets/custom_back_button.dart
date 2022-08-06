import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 10.h,),
        GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: 30.h,
              width: 90.w,
              child: Text("Back",style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 20.sp),
              ),
            ),
        ),
      ],
    );
  }
}
