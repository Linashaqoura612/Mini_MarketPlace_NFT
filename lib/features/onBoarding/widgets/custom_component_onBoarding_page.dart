import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/size_manager.dart';
import 'package:mini_nft_marketplace/features/onBoarding/widgets/custom_card_onBoarding_page.dart';
import 'package:mini_nft_marketplace/features/onBoarding/widgets/title_onBoarding_page.dart';

import '../../../core/resources/color_manager.dart';
import '../../../core/resources/font_manager.dart';
import '../../../core/resources/strings_manager.dart';

class CustomComponentOnboardingPage extends StatelessWidget {
  const CustomComponentOnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: HeightValue.h70,
          ),
          TitleOnboardingPage(),
          Spacer(),
         CustomCardOnboardingPage(),
          SizedBox(
            height: HeightValue.h70,
          ),
        ],
      ),
    );
  }
}
