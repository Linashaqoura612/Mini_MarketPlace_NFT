import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/route_manager.dart';
import 'package:mini_nft_marketplace/core/resources/size_manager.dart';
import 'package:mini_nft_marketplace/core/resources/strings_manager.dart';

import '../../../core/resources/color_manager.dart';
import '../../../core/resources/font_manager.dart';

class CustomCardOnboardingPage extends StatelessWidget {
  const CustomCardOnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: BlurValue.b10, sigmaY: BlurValue.b10),
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsetsDirectional.all(PaddingValue.p25),
          width: WidthValue.w306,
          height: HeightValue.h191,
          color: ColorManager.kColorWhite.withOpacity(.1),
          child: Column(
            children: [
              Text(
                StringsManager.titleCardOnBoardingPage,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: FontSize.fs19_82,
                    fontFamily: FontManager.sfProDisplay),
              ),
              SizedBox(
                height: HeightValue.h6,
              ),
              Text(
                StringsManager.descriptionCardOnBoardingPage,
                textAlign: TextAlign.center,
                style: TextStyle(color: ColorManager.kColorlightwhite),
              ),
              SizedBox(
                height: HeightValue.h10,
              ),
              Container(
                width: WidthValue.w198_2,
                decoration: BoxDecoration(
                    // color: ColorManager.kColorlightBlue,
                    // color: Color(0xff97a9f6),
                    gradient: LinearGradient(
                      colors: [
                        ColorManager.kColorlightBlue,
                        ColorManager.kColorWhite
                      ],
                    ),
                    border: Border.all(color: ColorManager.kColorWhite),
                    borderRadius: BorderRadius.circular(RadiusValue.r40)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(RadiusValue.r40),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                        sigmaX: BlurValue.b30, sigmaY: BlurValue.b30),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, RouteName.kHomePge);
                      },
                      child: Text(StringsManager.btnTitleCardOnBoardingPage),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
