import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/size_manager.dart';

import '../../../core/resources/color_manager.dart';
import '../../../core/resources/font_manager.dart';
import '../../../models/table_row_state_model.dart';

class CustomTableRowStatPage extends StatelessWidget {
  const CustomTableRowStatPage({super.key, required this.tableRowModel});
  final TableRowModel tableRowModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('${tableRowModel.order}'),
            const SizedBox(
              width: WidthValue.w10,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(RadiusValue.r9),
              child: Image(
                fit: BoxFit.cover,
                image: AssetImage(
                  tableRowModel.image,
                ),
                width: WidthValue.w39,
                height: HeightValue.h39,
              ),
            ),
            const SizedBox(
              width: WidthValue.w30,
            ),
            Container(
              width: 115,
              height: HeightValue.h39,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tableRowModel.name,
                    style: const TextStyle(
                        color: ColorManager.kColorWhite,
                        fontWeight: FontWeight.bold,
                        fontSize: FontSize.fs15,
                        fontFamily: FontManager.sfProDisplay),
                  ),
                  Text(
                    tableRowModel.subName,
                    style: const TextStyle(
                        fontSize: FontSize.fs11,
                        fontFamily: FontManager.sfProDisplay),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: WidthValue.w28_83,
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
                      fontSize: FontSize.fs13,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  tableRowModel.present,
                  style: TextStyle(
                      color: tableRowModel.active
                          ? Colors.green
                          : ColorManager.kColorRed,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
