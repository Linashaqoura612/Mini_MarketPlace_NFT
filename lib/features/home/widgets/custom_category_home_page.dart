import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/color_manager.dart';

import '../../../core/resources/asset_image_manager.dart';
import '../../../core/resources/font_manager.dart';
import '../../../core/resources/size_manager.dart';

class CustomCategoryHomePage extends StatelessWidget {
  const CustomCategoryHomePage(
      {super.key, required this.title, required this.image});
  final String title;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(RadiusValue.r27_03),
          child: Image(
            image: AssetImage(image),
            height: HeightValue.h167_57,
            width: WidthValue.w252_26,
          ),
        ),
        Positioned(
          bottom: PositionedValue.po,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(RadiusValue.r27_03),
              bottomLeft: Radius.circular(RadiusValue.r27_03),
            ),
            child: BackdropFilter(
              filter:
                  ImageFilter.blur(sigmaX: BlurValue.b3, sigmaY: BlurValue.b3),
              child: Container(
                alignment: Alignment.center,
                height: HeightValue.h45_06,
                width: WidthValue.w252_26,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      ColorManager.kColorBlack.withOpacity(0),
                      ColorManager.kColorBlack.withOpacity(.45),
                    ],
                  ),
                ),
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: FontSize.fs19_82,
                    fontFamily: FontManager.sfProDisplay,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
