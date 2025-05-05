import 'package:flutter/material.dart';

import '../../../core/resources/constants.dart';
import '../../../core/resources/size_manager.dart';
import '../../../core/resources/strings_manager.dart';
import '../widgets/custom_card_top_seller.dart';
import '../widgets/custom_category_home_page.dart';
import '../widgets/custom_subTitle.dart';
import '../widgets/custom_trending_card_collection.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: ListView(
        children: [
          SizedBox(
            height: HeightValue.h167_57,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => CustomCategoryHomePage(
                title: Constants.categoryList[index].title,
                image: Constants.categoryList[index].image,
              ),
              separatorBuilder: (context, int) => SizedBox(
                width: WidthValue.w10,
              ),
              itemCount: Constants.categoryList.length,
            ),
          ),
          SizedBox(
            height: HeightValue.h27,
          ),
          CustomSubtitle(
            title: StringsManager.trendingCollectionHomepage,
          ),
          SizedBox(
            height: 7,
          ),
          SizedBox(
            height: HeightValue.h194,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) =>
                  CustomTrendingCollection(
                      collectionModel: Constants.collectionLists[index]),
              separatorBuilder: (BuildContext context, int index) =>
                  SizedBox(width: WidthValue.w28_83),
              itemCount: Constants.collectionLists.length,
            ),
          ),
          SizedBox(
            height: HeightValue.h27,
          ),
          CustomSubtitle(
            title: StringsManager.topSellerCollectionHomepage1,
          ),
          SizedBox(
            height: HeightValue.h6,
          ),
          SizedBox(
            height: HeightValue.h236,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (BuildContext context, int index) => SizedBox(
                width: WidthValue.w28_83,
              ),
              itemCount: Constants.topSellerList.length,
              itemBuilder: (BuildContext context, int index) =>
                  CustomCardTopSeller(
                      topSellermodel: Constants.topSellerList[index]),
            ),
          ),
          SizedBox(
            height: HeightValue.h27,
          ),
          CustomSubtitle(
            title: StringsManager.topSellerCollectionHomepage1,
          ),
          SizedBox(
            height: HeightValue.h6,
          ),
          SizedBox(
            height: HeightValue.h236,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (BuildContext context, int index) => SizedBox(
                width: WidthValue.w28_83,
              ),
              itemCount: Constants.topSellerList.length,
              itemBuilder: (BuildContext context, int index) =>
                  CustomCardTopSeller(
                      topSellermodel: Constants.topSellerList[index]),
            ),
          ),
        ],
      ),
    );
  }
}
