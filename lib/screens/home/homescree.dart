import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:merohealth/screens/home/widgets/drawer.dart';
import 'package:merohealth/screens/home/widgets/home_diseases.dart';
import 'package:merohealth/screens/home/widgets/home_place_with_temperature.dart';
import 'package:merohealth/screens/home/widgets/homeheader.dart';
import 'package:merohealth/screens/home/widgets/time_uv_rain.dart';
import 'package:merohealth/screens/home/widgets/title.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          const HomeHeader(),
          SizedBox(
            height: 10.h,
          ),
          const HomePlaceWithTemperature(),
          const SizedBox(height: 20,),
          const MyTitle(text: "Threat & Disease"),
          const HomeDiseases()
        ],
      ),
      drawer:const MyDrawer(),
    ));
  }
}
