import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/route_manager.dart';

import '../../../core/resources/color_manager.dart';
import '../../../core/resources/size_manager.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar(
      {super.key,
      required this.onPressedstats,
      required this.widthScreen,
      required this.onPressehome});
  final VoidCallback onPressedstats;
  final VoidCallback onPressehome;
  final double widthScreen;
  @override
  Widget build(BuildContext context) {
    // widthScreen = MediaQuery.of(context).size.width;
    return SizedBox(
      height: HeightValue.h122,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            bottom: 0,
            child: Container(
              width: widthScreen,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(65),
                  topRight: Radius.circular(65),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                      sigmaX: BlurValue.b10, sigmaY: BlurValue.b10),
                  child: Container(
                    alignment: Alignment.center,
                    // padding: EdgeInsetsDirectional.all(PaddingValue.p9),
                    height: HeightValue.h90,
                    color: ColorManager.kColorWhite.withOpacity(.1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                          onPressed: onPressehome,
                          icon: Icon(
                            Icons.home,
                            size: SizeValue.sv39,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                            icon: Icon(
                              Icons.stacked_bar_chart,
                              size: SizeValue.sv39,
                              color: Colors.white,
                            ),
                            onPressed: onPressedstats),
                        Container(
                          width: 39,
                        ),
                        Icon(
                          Icons.search,
                          size: SizeValue.sv39,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.person,
                          size: SizeValue.sv39,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            child: Container(
              child: Icon(
                CupertinoIcons.plus,
                color: ColorManager.kColorWhite,
              ),
              decoration: ShapeDecoration(
                shape: StarBorder.polygon(sides: 6, pointRounding: .5),
                color: ColorManager.kColorWhite.withOpacity(.5),
              ),
              height: 70,
              width: 70,
            ),
          ),
        ],
      ),
    );
  }
}
