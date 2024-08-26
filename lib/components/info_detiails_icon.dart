import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mars/core/color_app.dart';

class DetlailsIcon extends StatelessWidget {
  const DetlailsIcon({
    super.key,
    required this.onPressed,
    required this.svgIcon,
  });
  final VoidCallback onPressed;
  final String svgIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: CircleAvatar(
        backgroundColor: ColorApp.backgroundColor,
        child: IconButton(
          onPressed: onPressed,
          icon: SvgPicture.asset(
            svgIcon,
            color: ColorApp.primerColor,
            width: 25.w,
          ),
        ),
      ),
    );
  }
}
