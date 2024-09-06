import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mars/components/product_size_card.dart';
import 'package:mars/core/color_app.dart';
import 'package:mars/core/font_app.dart';
import 'package:mars/core/size_app.dart';
import 'package:mars/models/size_prodict_model.dart';

import 'package:mars/style/style_text_titel.dart';

class ListProdectTiel extends StatelessWidget {
  const ListProdectTiel({
    super.key,
    required this.titelProcat,
    required this.price,
    required this.oldPrice,
  });

  final String titelProcat, price, oldPrice;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        title: Text(
          textAlign: TextAlign.start,
          titelProcat,
          style: styleTextTitel(),
        ),
        subtitle: Row(
          children: [
            ...List.generate(
              sizeProdictModel.sizeProdictList.length,
              (index) => Padding(
                padding: const EdgeInsets.all(5.0),
                child: GestureDetector(
                  onTap: () {},
                  child: ProdactSizeCard(
                    currenIndex: 0,
                    index: index,
                  ),
                ),
              ),
            ),
          ],
        ),
        trailing: Column(
          children: [
            Text(
              "$price g.d",
              style: TextStyle(
                fontSize: 17.w,
                fontFamily: fontApp.bigText,
                fontWeight: FontWeight.w700,
                color: ColorApp.titelColor,
              ),
            ),
            const Spacer(),
            Text(
              "$oldPrice g.d",
              style: TextStyle(
                color: ColorApp.supColor,
                fontSize: 15.w,
                decoration: TextDecoration.lineThrough,
              ),
            )
          ],
        ),
      ),
    );
  }
}
