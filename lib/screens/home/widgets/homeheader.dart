import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:merohealth/constants/MyColors.dart';


class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            Scaffold.of(context).openDrawer();
          },
          child: Container(
            height: 70.h,
            child: Icon(
              Icons.menu,
              size: 40,
            ),
          ),
        ),
        SizedBox(
          width: 40.w,
        ),
        Container(
          height: 70.h,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              "HealthCare",
              style: TextStyle(
                  color: MyColors.homeHeader,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  fontFamily: GoogleFonts.lato().fontFamily),
            ),
          ),
        )
      ],
    );
  }
}
