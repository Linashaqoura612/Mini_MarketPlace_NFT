import 'package:flutter/material.dart';

import '../../../core/resources/color_manager.dart';
import '../../../core/resources/font_manager.dart';
import '../../../core/resources/size_manager.dart';
import '../../../core/resources/strings_manager.dart';

class ActiveSubTitleStatePage extends StatelessWidget {
  const ActiveSubTitleStatePage(
      {super.key,
      required this.active,
      required this.title,
      required this.icon});
  final bool active;
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsetsDirectional.all(PaddingValue.p16),
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                color: ColorManager.kColorWhite,
              ),
              Text(
                title,
                style: TextStyle(
                    color: active ? ColorManager.kColorWhite : Colors.grey,
                    fontFamily: FontManager.sfProDisplay,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          if (active)
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
    );
  }
}
