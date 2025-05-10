import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/size_manager.dart';

import '../../../core/resources/color_manager.dart';
import '../../../core/resources/font_manager.dart';

class CustomCategoryStatsPage extends StatelessWidget {
  const CustomCategoryStatsPage(
      {super.key, required this.icon, required this.title});
  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.symmetric(vertical: PaddingValue.p10,horizontal: PaddingValue.p25),
      alignment: Alignment.center,
      // height: HeightValue.h39,
      // width: WidthValue.w147,
      decoration: BoxDecoration(
        color: ColorManager.kColorPurple.withOpacity(.12),
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: ColorManager.kColorPurple),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: Colors.grey,
          ),SizedBox(width: WidthValue.w2,),
          Text(
            title,
            style: TextStyle(
                fontSize: FontSize.fs12,
                fontWeight: FontWeight.bold,
                fontFamily: FontManager.sfProDisplay),
          ),
          Icon(Icons.keyboard_arrow_down)
        ],
      ),
    );
  }
}
