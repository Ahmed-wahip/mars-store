import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mars/components/info_confirm_order.dart';
import 'package:mars/core/color_app.dart';
import 'package:mars/core/image_app.dart';
import 'package:mars/core/localizations_app.dart';
import 'package:mars/core/size_app.dart';
import 'package:mars/functions/show_error_dialog.dart';
import 'package:mars/style/style_box_shadow.dart';

class DetlailsFunctions {
  String textError = "";
  void bookMark(BuildContext context) {
    textError = "add_book_mark_msg".tr(context);
    showErrorDialog(context, imageApp.checkCorrect, textError, "", true);
  }

  void addToCar(BuildContext context) {
    textError = "add_to_car_msg".tr(context);
    showErrorDialog(context, imageApp.checkCorrect, textError, "", true);
  }

  void shopping(BuildContext context) {
    textError = "order_is_ready_msg".tr(context);
    showErrorDialog(context, imageApp.checkCorrect, textError, "", true);
  }

  void confirmOrder(BuildContext context, int index) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          width: SizeApp.screenWidth,
          height: 700.h,
          decoration: BoxDecoration(
            color: ColorApp.backgroundColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(SizeApp.radiusSize as double),
              topRight: Radius.circular(SizeApp.radiusSize as double),
            ),
            boxShadow: [styleBoxShadow.primerBoxShadow],
          ),
          child: InfoConfirmOrder(index: index),
        );
      },
    );
  }
}

DetlailsFunctions detlailsFunctions = DetlailsFunctions();
