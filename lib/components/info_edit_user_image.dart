import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mars/components/info_user_image.dart';
import 'package:mars/core/color_app.dart';
import 'package:mars/core/icon_app.dart';

class InfoEditUserImage extends StatelessWidget {
  const InfoEditUserImage({
    super.key,
    required this.onPressed,
  });
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const InfoUserImage(),
        Container(
          width: 150.w,
          height: 150.w,
          child: IconButton(
            onPressed: onPressed,
            icon: SvgPicture.asset(
              iconApp.cameraIcon,
              width: 50.w,
              color: ColorApp.titelColor,
            ),
          ),
        ),
      ],
    );
  }
}
