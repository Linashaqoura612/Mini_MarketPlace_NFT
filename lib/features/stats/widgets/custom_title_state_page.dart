import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/features/stats/widgets/active_sub_title_state_page.dart';

import '../../../core/resources/color_manager.dart';
import '../../../core/resources/font_manager.dart';
import '../../../core/resources/size_manager.dart';
import '../../../core/resources/strings_manager.dart';

class CustomTitleStatePage extends StatelessWidget {
  const CustomTitleStatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsetsDirectional.only(bottom: PaddingValue.p16),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
              color: ColorManager.kColorlightBlue, width: WidthValue.w0_2),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ActiveSubTitleStatePage(
            active: true,
            title: StringsManager.ranking,
            icon: Icons.query_stats,
          ),
          SizedBox(
            width: WidthValue.w20,
          ),
          ActiveSubTitleStatePage(
            active: false,
            title: StringsManager.activity,
            icon: Icons.stacked_bar_chart_sharp,
          ),
        ],
      ),
    );
  }
}
