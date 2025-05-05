import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/asset_image_manager.dart';
import 'package:mini_nft_marketplace/core/resources/color_manager.dart';
import 'package:mini_nft_marketplace/core/resources/constants.dart';
import 'package:mini_nft_marketplace/core/resources/font_manager.dart';
import 'package:mini_nft_marketplace/core/resources/size_manager.dart';
import 'package:mini_nft_marketplace/core/resources/strings_manager.dart';
import 'package:mini_nft_marketplace/features/home/screens/home.dart';
import 'package:mini_nft_marketplace/features/home/widgets/custom_bottom_navigation_bar.dart';
import 'package:mini_nft_marketplace/features/home/widgets/custom_card_top_seller.dart';
import 'package:mini_nft_marketplace/features/home/widgets/custom_subTitle.dart';
import 'package:mini_nft_marketplace/features/home/widgets/custom_title_home_page.dart';
import 'package:mini_nft_marketplace/features/home/widgets/custom_trending_card_collection.dart';
import 'package:mini_nft_marketplace/features/stats/screens/stats.dart';
import 'package:mini_nft_marketplace/models/collections_model.dart';

import '../../../core/resources/route_manager.dart';
import '../widgets/custom_category_home_page.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  List<Widget> w = [Home(), Stats()];
  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: ColorManager.kColorPrimary,
      appBar: index == 0
          ? AppBar(
              centerTitle: true,
              title: Text(StringsManager.titleHomepage),
              backgroundColor: Colors.transparent,
            )
          : index == 1
              ? AppBar(
                  centerTitle: true,
                  actions: [
                    Padding(
                        padding:
                            EdgeInsetsDirectional.only(end: PaddingValue.p14),
                        child: Icon(Icons.more_horiz_outlined))
                  ],
                  title: Text(StringsManager.StatsTitle),
                  backgroundColor: Colors.transparent,
                )
              : AppBar(
                  title: Text("null"),
                ),
      body: w[index],
      extendBody: true,
      bottomNavigationBar: CustomBottomNavigationBar(
        onPressedstats: () {
          setState(() {
            index = 1;
          });
        },
        widthScreen: widthScreen,
        onPressehome: () {
          setState(() {
            index = 0;
          });
        },
      ),
    );
  }
}
