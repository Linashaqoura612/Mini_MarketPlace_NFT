import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/route_manager.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: RouteManager.routes,
      initialRoute: RouteName.kOnBoardingPge,
      theme: ThemeData.dark(),
    );
  }
}
