import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mars/core/color_app.dart';
import 'package:mars/core/localizations_app.dart';
import 'package:mars/core/size_app.dart';
import 'package:mars/custom/costom_viow_prodact.dart';
import 'package:mars/custom/custom_app_bar.dart';
import 'package:mars/custom/custom_search_bar.dart';
import 'package:mars/models/clothes_model.dart';

class ClothesScreen extends StatelessWidget {
  const ClothesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.backgroundColor,
      body: Column(
        children: [
          CustomAppBar(titelScreen: "clothes_ads_msg".tr(context)),
          // custom search bar
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: SizedBox(height: 35.h, child: const CustomSearchBar()),
          ),
          SizedBox(
            height: SizeApp.screenHeight! * 1 - 125.h,
            child: SingleChildScrollView(
              physics: const ScrollPhysics(),
              child: Column(
                children: [
                  CustomViewProdicts(
                    listModelName: clothesModel.clothesList,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
