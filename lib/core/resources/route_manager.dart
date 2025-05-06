import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/features/home/screens/home_page.dart';
import 'package:mini_nft_marketplace/features/onBoarding/screens/on_Boarding.dart';
import 'package:mini_nft_marketplace/features/stats/screens/stats.dart';

class RouteManager {
  static Map<String, WidgetBuilder> routes = {
    RouteName.kOnBoardingPge: (context) => OnBoardingPage(),
    RouteName.kHomePge: (context) => HomePage(),
    RouteName.kStatePge: (context) => Stats(),
  };
}

class RouteName {
  static String kOnBoardingPge = "on_boarding_page";
  static String kHomePge = "home_page";
  static String kStatePge = "state";
}
