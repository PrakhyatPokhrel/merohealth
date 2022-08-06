import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:merohealth/constants/MyColors.dart';
import 'package:merohealth/screens/home/widgets/custom_back_button.dart';
import 'package:merohealth/screens/home/widgets/title.dart';


class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          CustomBackButton(),
          MyTitle(text: "About Us"),
          Stack(children: [
            Container(
              height: 600.h,
              width: 395.w,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: MyColors.aboutusContainerColor,
                  borderRadius: BorderRadius.circular(5)),
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10.sp),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: Container(
                  height: 100.h,
                  width: 393.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: MyColors.aboutusBottomContainerColor,
                      borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 10.sp),
                  ),
                ),
              ),
            )
          ])
        ],
      )),
    );
  }
}
