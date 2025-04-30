import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/asset_image_manager.dart';
import 'package:mini_nft_marketplace/core/resources/color_manager.dart';
import 'package:mini_nft_marketplace/core/resources/font_manager.dart';
import 'package:mini_nft_marketplace/core/resources/size_manager.dart';
import 'package:mini_nft_marketplace/core/resources/strings_manager.dart';
import 'package:mini_nft_marketplace/features/home/widgets/custom_title_home_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.kColorPrimary,
      appBar: AppBar(
        centerTitle: true,
        title: Text(StringsManager.titleHomepage),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(RadiusValue.r27_03),
                child: Image(
                  image: AssetImage(AssetImageManager.categoryHomePage),
                  height: HeightValue.h167_57,
                  width: WidthValue.w252_26,
                ),
              ),
              Positioned(
                bottom: 0,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(RadiusValue.r27_03),
                    bottomLeft: Radius.circular(RadiusValue.r27_03),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    height: 45.06,
                    width: WidthValue.w252_26,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xff000000).withOpacity(0),
                          Color(0xff000000).withOpacity(.45),
                        ],
                      ),
                    ),
                    child: Text(
                      "Art",
                      style: TextStyle(
                        fontSize: 19.82,
                        fontFamily: FontManager.sfProDisplay,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
