import 'package:flutter/material.dart';

import '../../../core/resources/color_manager.dart';
import '../../../core/resources/font_manager.dart';
import '../../../core/resources/strings_manager.dart';

class CustomTitleHomePage extends StatelessWidget {
  const CustomTitleHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      StringsManager.titleHomepage,
      style: TextStyle(
          fontSize: FontSize.fs25_23,
          fontWeight: FontWeight.bold,
          fontFamily: FontManager.sfProDisplay,
          color: ColorManager.kColorWhite
      ),
    );
  }
}
