import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/color_manager.dart';
import 'package:mini_nft_marketplace/core/resources/font_manager.dart';
import 'package:mini_nft_marketplace/core/resources/size_manager.dart';
import 'package:mini_nft_marketplace/core/resources/strings_manager.dart';
import 'package:mini_nft_marketplace/features/home/widgets/custom_subTitle.dart';
import 'package:mini_nft_marketplace/features/stats/widgets/custom_category_stats_page.dart';
import 'package:mini_nft_marketplace/features/stats/widgets/custom_title_state_page.dart';

import '../../../core/resources/asset_image_manager.dart';
import '../../../core/resources/route_manager.dart';
import '../../../models/table_row_state_model.dart';
import '../widgets/Custom_table_row_stat_page.dart';

class Stats extends StatelessWidget {
  const Stats({super.key});

  @override
  Widget build(BuildContext context) {
    double listHeight = MediaQuery.of(context).size.height - 250;
    print(listHeight);
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: HeightValue.h20,
          ),
          const CustomTitleStatePage(),
          const SizedBox(
            height: HeightValue.h27,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomCategoryStatsPage(
                icon: CupertinoIcons.table_badge_more,
                title: StringsManager.allCategory,
              ),
              SizedBox(
                width: WidthValue.w20,
              ),
              CustomCategoryStatsPage(
                icon: CupertinoIcons.link,
                title: StringsManager.allChains,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: PaddingValue.p9),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                    sigmaX: BlurValue.b10, sigmaY: BlurValue.b10),
                child: Container(
                  color: ColorManager.kColorWhite.withOpacity(.1),
                  child: ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (context, index) => CustomTableRowStatPage(
                      tableRowModel: TableRowModel(
                          index + 1,
                          index%2==0?AssetImageManager.categoryVirtualHomePage:AssetImageManager.trendingHomePage3,
                          "name $index",
                          "subName $index",
                          "${index * 10}",
                          "present",
                          index%3==0?true:false),
                    ),
                    separatorBuilder: (context, index) => SizedBox(
                      height: 40,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
