import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mars/components/info_items_felter_search.dart';
import 'package:mars/core/color_app.dart';
import 'package:mars/core/icon_app.dart';
import 'package:mars/core/localizations_app.dart';
import 'package:mars/core/size_app.dart';
import 'package:mars/style/style_box_shadow.dart';

bool valueNow = false;

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Container(
            width: SizeApp.screenWidth! * 1 - 90,
            height: 35.h,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: ColorApp.backgroundColor,
              borderRadius: BorderRadius.circular(SizeApp.radiusSize as double),
              boxShadow: [styleBoxShadow.backBoxShadow],
            ),
            child: TextField(
              textInputAction: TextInputAction.next,
              cursorErrorColor: ColorApp.erorrColor,
              cursorColor: ColorApp.primerColor,
              decoration: InputDecoration(
                hintText: "search_bar_msg".tr(context),
                hintMaxLines: 1,
                border: InputBorder.none,
                fillColor: ColorApp.primerColor,
                prefixIcon: Container(
                  margin: EdgeInsets.all(8.r),
                  child: SvgPicture.asset(
                    iconApp.searchIcon,
                    color: ColorApp.primerColor,
                    width: 10.w,
                  ),
                ),
              ),
            ),
          ),
          const Spacer(),
          Container(
            height: 35.h,
            width: 35.h,
            decoration: BoxDecoration(
              color: ColorApp.titelColor,
              borderRadius: BorderRadius.circular(SizeApp.radiusSize as double),
            ),
            child: PopupMenuButton(
              color: ColorApp.backgroundColor,
              icon: SvgPicture.asset(
                iconApp.frlterSearchIcon,
                color: ColorApp.backgroundColor,
                width: 20.w,
              ),
              itemBuilder: (context) => const [
                PopupMenuItem(
                    child: InfoItemsFelterSearsh(
                  text: "divider_all_procuct_msg",
                )),
                PopupMenuItem(
                    child: InfoItemsFelterSearsh(
                  text: "divider_lowest_price_msg",
                )),
                PopupMenuItem(
                    child: InfoItemsFelterSearsh(
                  text: "divider_highest_price_msg",
                )),
                PopupMenuItem(
                    child: InfoItemsFelterSearsh(
                  text: "divider_most_sold_msg",
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
