import 'package:flutter/material.dart';

import '../../../core/resources/color_manager.dart';
import '../../../core/resources/font_manager.dart';
import '../../../core/resources/strings_manager.dart';

class TitleOnboardingPage extends StatelessWidget {
  const TitleOnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.start,
      StringsManager.titleOnBoardingPage,
      style: TextStyle(
          fontFamily: FontManager.sfProDisplay,
          fontSize: FontSize.fs36_04,
          fontWeight: FontWeight.bold,
          color: ColorManager.kColorWhite),
    );
  }
}
