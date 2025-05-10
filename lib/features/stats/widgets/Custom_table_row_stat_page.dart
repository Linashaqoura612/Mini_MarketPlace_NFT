import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/resources/asset_image_manager.dart';
import '../../../core/resources/color_manager.dart';
import '../../../core/resources/font_manager.dart';
import '../../../core/resources/size_manager.dart';
import '../../../models/table_row_state_model.dart';

class CustomTableRowStatPage extends StatelessWidget {
  const CustomTableRowStatPage({super.key, required this.tableRowModel});
  final TableRowModel tableRowModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(tableRowModel.order.toString()),
          SizedBox(
            width: WidthValue.w10,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(RadiusValue.r9),
            child: Image(
              image: AssetImage(tableRowModel.image),
              width: WidthValue.w39,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: WidthValue.w13,
          ),
          Container(
            width: WidthValue.w115,
            height: HeightValue.h39,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tableRowModel.name.toString(),
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: FontManager.sfProDisplay,
                      color: ColorManager.kColorWhite,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  tableRowModel.subName.toString(),
                  style: TextStyle(
                      fontSize: FontSize.fs11,
                      fontFamily: FontManager.sfProDisplay,
                      color: Colors.grey),
                ),
              ],
            ),
          ),
          Spacer(),
          Icon(
            CupertinoIcons.link,
            size: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
               tableRowModel.count,
                style: TextStyle(
                    color: ColorManager.kColorWhite,
                    fontWeight: FontWeight.bold,
                    fontSize: FontSize.fs13),
              ),
              Text(
                tableRowModel.present,
                style: TextStyle(color:tableRowModel.active? Colors.green:Colors.red),
              )
            ],
          )
        ],
      ),
    );
  }
}
