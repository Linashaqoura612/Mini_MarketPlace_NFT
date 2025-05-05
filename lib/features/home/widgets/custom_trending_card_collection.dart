import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/models/collections_model.dart';

import '../../../core/resources/asset_image_manager.dart';
import '../../../core/resources/color_manager.dart';
import '../../../core/resources/size_manager.dart';

class CustomTrendingCollection extends StatelessWidget {
  const CustomTrendingCollection({
    super.key, required this.collectionModel,
  }
);
final CollectionModel  collectionModel;
  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      alignment: Alignment.centerLeft,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter:
              ImageFilter.blur(sigmaX: BlurValue.b10, sigmaY: BlurValue.b10),
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsetsDirectional.all(PaddingValue.p9),
            width: WidthValue.w157,
            height: HeightValue.h194,
            color: ColorManager.kColorWhite.withOpacity(.1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(19),
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage(collectionModel.image),
                    height: HeightValue.h139,
                  ),
                ),
                SizedBox(
                  height: HeightValue.h9,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(collectionModel.title),
                    Row(
                      children: [

                        Icon(
                          CupertinoIcons.heart_fill,
                          color: collectionModel.activeLike?ColorManager.kColorRed:Colors.grey,
                        ),
                        Text(collectionModel.countLike.toString())
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
