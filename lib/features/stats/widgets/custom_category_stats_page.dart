import 'package:flutter/material.dart';

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
      alignment: Alignment.center,
      height: 39,
      width: 147,
      decoration: BoxDecoration(
        color: ColorManager.kColorPurple.withOpacity(.12),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: ColorManager.kColorPurple),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: Colors.grey,
          ),
          Text(
            title,
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                fontFamily: FontManager.sfProDisplay),
          ),
          Icon(Icons.keyboard_arrow_down)
        ],
      ),
    );
  }
}
