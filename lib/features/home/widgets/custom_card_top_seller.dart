import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/models/topSeller_model.dart';

import '../../../core/resources/asset_image_manager.dart';
import '../../../core/resources/color_manager.dart';
import '../../../core/resources/font_manager.dart';
import '../../../core/resources/size_manager.dart';

class CustomCardTopSeller extends StatelessWidget {
  const CustomCardTopSeller({super.key, required this.topSellermodel});
final TopSellerModel topSellermodel;
  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      alignment: Alignment.centerLeft,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(
              sigmaX: BlurValue.b10, sigmaY: BlurValue.b10),
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsetsDirectional.all(PaddingValue.p9),
            width: WidthValue.w157,
            height: HeightValue.h236,
            color: ColorManager.kColorWhite.withOpacity(.1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  image:
                  AssetImage(topSellermodel.image),
                  height: HeightValue.h139,
                ),
                SizedBox(
                  height: HeightValue.h9,
                ),
                Text(
                  topSellermodel.title,
                  style: TextStyle(
                      color: ColorManager.kColorWhite,
                      fontWeight: FontWeight.bold,
                      fontFamily: FontManager.sfProDisplay,
                      fontSize: FontSize.fs11),
                ),
                Text(
                  topSellermodel.sub_title,
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontFamily: FontManager.sfProDisplay,
                      fontSize: FontSize.fs10),
                ),
                SizedBox(
                  height: HeightValue.h9,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.hearing_sharp,
                          color: Colors.grey,
                        ),
                        Text(topSellermodel.count1.toString()),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          CupertinoIcons.heart,

                          color:topSellermodel.activeLike? Colors.red: Colors.grey,
                        ),
                        Text(topSellermodel.count2.toString(),),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
