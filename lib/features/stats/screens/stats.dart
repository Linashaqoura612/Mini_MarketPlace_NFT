import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/color_manager.dart';
import 'package:mini_nft_marketplace/core/resources/font_manager.dart';
import 'package:mini_nft_marketplace/core/resources/size_manager.dart';
import 'package:mini_nft_marketplace/core/resources/strings_manager.dart';

class Stats extends StatelessWidget {
  const Stats({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // padding: EdgeInsetsDirectional.only(bottom: PaddingValue.p16),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                  color: ColorManager.kColorlightBlue, width: WidthValue.w0_7),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                // padding: EdgeInsetsDirectional.all(PaddingValue.p16),
                child: Column(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.stacked_bar_chart,
                          color: ColorManager.kColorWhite,
                        ),
                        Text(
                          StringsManager.ranking,
                          style: TextStyle(
                              color: ColorManager.kColorWhite,
                              fontFamily: FontManager.sfProDisplay,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: ColorManager.kColorDarkPurple,
                        boxShadow: [
                          BoxShadow(
                            color: ColorManager.kColorDarkPurple,
                            blurRadius: 16,
                            offset: Offset(0, -5),
                            spreadRadius: 1,
                          ),

                        ],
                      ),
                      width: WidthValue.w106,
                      height: 3.6,
                    )
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.stacked_bar_chart,
                    color: Colors.grey,
                  ),
                  Text(
                    StringsManager.activity,
                    style: TextStyle(
                        color: Colors.grey,
                        fontFamily: FontManager.sfProDisplay,
                        fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
