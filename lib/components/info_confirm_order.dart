import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mars/components/info_person_viow_text.dart';
import 'package:mars/controllers/input_text_controller.dart';
import 'package:mars/core/color_app.dart';
import 'package:mars/core/icon_app.dart';
import 'package:mars/models/prodact_model.dart';
import 'package:mars/widgets/hero_button.dart';

class InfoConfirmOrder extends StatelessWidget {
  const InfoConfirmOrder({
    super.key,
    required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Icons.remove,
          size: 40.r,
          color: ColorApp.primerColor,
        ),
        // SizedBox(height: 40.h),
        InfoPersonViowText(
          icon: iconApp.personIcon,
          titel: "user_name_titel_msg",
          supTitel: inputTextController.userNameController.text,
        ),
        InfoPersonViowText(
          icon: iconApp.phoneNumberIcon,
          titel: "user_phone_titel_msg",
          supTitel: inputTextController.userPhoneController.text,
        ),
        InfoPersonViowText(
          icon: iconApp.markerIcon,
          titel: "user_location_msg",
          supTitel: "Egypt/Qalyubia/Kafr Taha",
        ),
        InfoPersonViowText(
          icon: iconApp.sizeProductIcon,
          titel: "user_size_product_msg",
          supTitel: "XL",
        ),
        InfoPersonViowText(
          icon: iconApp.clotheIcon,
          titel: "product_name_msg",
          supTitel: "${prodactModel.prodactList[index]}",
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HeroButton(
              onPressed: () {},
              text: "verify_otp_buttom_msg",
              svgIcon: "",
              isBorder: true,
              isIcon: false,
              widthSize: 50.w,
            ),
            HeroButton(
              onPressed: () {},
              text: "cancel_buttom_msg",
              svgIcon: "",
              isBorder: false,
              isIcon: false,
              widthSize: 50.w,
            ),
          ],
        )
      ],
    );
  }
}
