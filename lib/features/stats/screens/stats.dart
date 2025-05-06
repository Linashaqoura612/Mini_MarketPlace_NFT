import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/color_manager.dart';
import 'package:mini_nft_marketplace/core/resources/font_manager.dart';
import 'package:mini_nft_marketplace/core/resources/size_manager.dart';
import 'package:mini_nft_marketplace/core/resources/strings_manager.dart';
import 'package:mini_nft_marketplace/features/home/widgets/custom_subTitle.dart';
import 'package:mini_nft_marketplace/features/stats/widgets/custom_category_stats_page.dart';
import 'package:mini_nft_marketplace/features/stats/widgets/custom_title_state_page.dart';

class Stats extends StatelessWidget {
  const Stats({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: HeightValue.h20,
        ),
        CustomTitleStatePage(),
        SizedBox(
          height: HeightValue.h27,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

           CustomCategoryStatsPage(icon: Icons.window, title: 'All Category',),
           SizedBox(width: 50,),
           CustomCategoryStatsPage(icon: Icons.window, title: 'helllo',),
          ],
        )
      ],
    );
  }
}
