import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mars/core/color_app.dart';
import 'package:mars/core/font_app.dart';
import 'package:mars/core/size_app.dart';
import 'package:mars/models/size_prodict_model.dart';

class ProdactSizeCard extends StatelessWidget {
  const ProdactSizeCard({
    super.key,
    required this.index,
    required this.currenIndex,
  });
  final int index;
  final int currenIndex;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      width: 40.w,
      height: 40.w,
      decoration: BoxDecoration(
        color: index == currenIndex
            ? ColorApp.auxiliaryColor
            : ColorApp.backgroundColor,
        borderRadius: BorderRadius.circular(
          SizeApp.radiusSize as double,
        ),
        border: Border.all(
          color: ColorApp.primerColor,
        ),
      ),
      child: Center(
        child: Text(
          "${sizeProdictModel.sizeProdictList[index]}".toUpperCase(),
          style: TextStyle(
            fontFamily: fontApp.bigText,
            fontWeight: FontWeight.w700,
            color: ColorApp.titelColor,
          ),
        ),
      ),
    );
  }
}
