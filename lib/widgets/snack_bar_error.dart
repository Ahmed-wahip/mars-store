import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mars/core/color_app.dart';
import 'package:mars/core/size_app.dart';
import 'package:mars/widgets/text_localization.dart';

SnackBar snackBarError(String errorMsg, String icon) {
  return SnackBar(
    backgroundColor: ColorApp.backgroundColor,
    content: Container(
      // width: SizeApp.screenWidth,
      // height: 100.h,
      padding: EdgeInsets.all(10.w),
      margin: EdgeInsets.all(10.w),
      decoration: BoxDecoration(
        color: ColorApp.supColor,
        borderRadius: BorderRadius.circular(SizeApp.radiusSize as double),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: SvgPicture.asset(
              icon,
              color: ColorApp.backgroundColor,
            ),
          ),
          SizedBox(width: 20.w),
          TextLocalization(
            text: errorMsg,
            style: TextStyle(
              color: ColorApp.backgroundColor,
              fontSize: SizeApp.mediumTextSize!,
            ),
          ),
        ],
      ),
    ),
  );
}
