import 'package:flutter/material.dart';

import '../../../core/resources/color_manager.dart';
import '../../../core/resources/font_manager.dart';
import '../../../core/resources/size_manager.dart';

class CustomSubtitle extends StatelessWidget {
  const CustomSubtitle({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsetsDirectional.symmetric(horizontal: PaddingValue.p14),
        child: Text(
          title,
          style: TextStyle(
            color: ColorManager.kColorWhite,
            fontSize: FontSize.fs17,
            fontFamily: FontManager.sfProDisplay,
          ),
        ),
      ),
    );
  }
}
