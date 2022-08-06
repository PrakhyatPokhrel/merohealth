import 'package:flutter/material.dart';
import 'package:merohealth/constants/routes_constant.dart';
import 'package:merohealth/screens/aboutus/about_us.dart';
import 'package:merohealth/screens/contactus/contact_us.dart';
import 'package:merohealth/screens/disease%20and%20threat/disease_and_threat_page.dart';
import 'package:merohealth/screens/dissease/screen.dart';
import 'package:merohealth/screens/faq/faq_page.dart';
import 'package:merohealth/screens/home/homescree.dart';
import 'package:merohealth/screens/home/widgets/drawer.dart';


class ProjectRoute {
  static Route<dynamic>? generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case homeRoute:
        return _getPageRoute(HomeScreen());
      case drawerRoute:
        return _getPageRoute(MyDrawer());
      // case diseaseRoute:
      //   return _getPageRoute(Disease());
      case diseaseAndThreatRoute:
        return _getPageRoute(DiseaseAndThreatScreen());
      case faqRoute:
        return _getPageRoute(FaqScreen());
      case aboutusRoute:
        return _getPageRoute(AboutUs());
      case contactusRoute:
        return _getPageRoute(ContactUs());
    }
  }
}

PageRoute _getPageRoute(Widget pageToShow) {
  return MaterialPageRoute(builder: (_) => pageToShow);
}
