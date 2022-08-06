import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:merohealth/constants/routes_constant.dart';
import 'package:merohealth/screens/home/widgets/homeitems.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
          children:  [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: const CircleAvatar(radius: 30),
                ),
                Column(
                  children: [
                    Text("name",style: TextStyle(fontWeight: FontWeight.bold),),
                    Text("email@gmail.com",style: TextStyle(fontWeight: FontWeight.bold),)
                  ],
                )
                
              ],
            ),
            SizedBox(height: 10.h,),
            const HomeItems(text: "Home",route:homeRoute),
            const HomeItems(text: "Disease & Threat",route: diseaseAndThreatRoute,),
            const HomeItems(text: "FAQ",route: faqRoute,),
            const HomeItems(text: "About Us",route: aboutusRoute),
            const HomeItems(text: "Contact Us",route: contactusRoute,),
            
          ],)
    );
  }
}
