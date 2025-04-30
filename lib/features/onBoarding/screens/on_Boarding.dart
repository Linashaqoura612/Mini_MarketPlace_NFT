// import 'dart:ui_web';

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/asset_image_manager.dart';
import 'package:mini_nft_marketplace/core/resources/color_manager.dart';
import 'package:mini_nft_marketplace/core/resources/font_manager.dart';
import 'package:mini_nft_marketplace/core/resources/strings_manager.dart';
import 'package:mini_nft_marketplace/features/onBoarding/widgets/custom_background_onBoarding_page.dart';
import 'package:mini_nft_marketplace/features/onBoarding/widgets/custom_component_onBoarding_page.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
         const  CustomBackgroundOnboardingPage(),
          const CustomComponentOnboardingPage(),
          ],
        ),
      ),
    );
  }
}
