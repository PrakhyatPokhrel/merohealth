import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:merohealth/constants/MyColors.dart';
import 'package:merohealth/screens/home/widgets/custom_back_button.dart';
import 'package:merohealth/screens/home/widgets/title.dart';


class FaqScreen extends StatelessWidget {
  const FaqScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String url = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHPW5VWXoWo8UZZm6Zk2Pmr2TJin0WrLYBUQ&usqp=CAU";
    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          CustomBackButton(),
          MyTitle(text: "FAQ"),
          SizedBox(
            height: 30.h,
          ),
          Stack(
            children: [
              Container(
                height: 500.h,
                width: 415.w,
                child: Image.network(
                  url,
                  fit: BoxFit.fill,
                ),
              ),
              Column(
                children: [
                  FaqContainer(),
                  FaqContainer(),
                  FaqContainer(),
                  FaqContainer(),
                  FaqContainer(),
                ],
              ),
            ],
          )
        ]),
      ),
    );
  }
}

class FaqContainer extends StatefulWidget {
  const FaqContainer({
    Key? key,
  }) : super(key: key);

  @override
  State<FaqContainer> createState() => _FaqContainerState();
}

class _FaqContainerState extends State<FaqContainer> {
  var aContainerHeight = 0.0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 80.h,
            width: 395.w,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: MyColors.faqcontianerColor,
                borderRadius: BorderRadius.circular(5)),
            child: Row(
              children: [
                Text(
                  "1. Hospitals having 24hrs emergencies services in kathmandu?",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp),
                ),
                InkWell(
                    onTap: () {
                      setState(() {
                        aContainerHeight == 0
                            ? aContainerHeight = 50.h
                            : aContainerHeight = 0;
                      });
                    },
                    child: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.blueGrey,
                    ))
              ],
            ),
          ),
        ),
        AnimatedContainer(
          duration: const Duration(milliseconds: 120),
          height: aContainerHeight,
          width: 50.w,
          color: Colors.amber,
        )
      ],
    );
  }
}
