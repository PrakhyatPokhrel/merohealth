import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:merohealth/config/routes.dart';
import 'package:merohealth/constants/MyColors.dart';
import 'package:merohealth/constants/routes_constant.dart';
import 'package:merohealth/screens/dissease/screen.dart';
import 'package:merohealth/screens/firestore.dart';
import 'package:firebase_core/firebase_core.dart';



Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize:const  Size(415,896),
      builder: (context,child) {
        return  MaterialApp(
          theme: ThemeData(
            scaffoldBackgroundColor: MyColors.scaffoldBackgroundColor,
            drawerTheme: DrawerThemeData(backgroundColor:MyColors.scaffoldBackgroundColor )
          ),
          debugShowCheckedModeBanner: false,
          title: "Project",
          onGenerateRoute: ProjectRoute.generateRoute ,
          initialRoute: homeRoute,
          // home:GetUserName("ok"),
          // home: Disease(),
        );
      }
    );
  }
}
