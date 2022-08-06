import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:merohealth/constants/MyColors.dart';
class TimeUvRain extends StatelessWidget {
  const TimeUvRain({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 100.h,
        width:395.w,
        decoration: BoxDecoration(color: MyColors.white,
        borderRadius: BorderRadius.circular(5)
        ),
        
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:const [
            Items(),
            Items(),
            Items(),
          ],
        ),
      ),
    );
  }
}

class Items extends StatelessWidget {
  const Items({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(height: 45.h,
        alignment: Alignment.center,
        // color: Colors.red,
        width: 50.w,
        child: Text("Time"),
        ),
        
        Container(
          alignment: Alignment.center,
          // color: Colors.red,
          height: 45.h,
        width: 50.w,
        child: Text("Time"),
        ),
      ],
    );
  }
}

