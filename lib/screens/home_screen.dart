import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mars/bloc/home_screen/indecatorads_bloc.dart';
import 'package:mars/components/info_ads_banner.dart';
import 'package:mars/core/color_app.dart';
import 'package:mars/core/size_app.dart';
import 'package:mars/custom/costom_viow_prodact.dart';
import 'package:mars/custom/custom_search_bar.dart';
import 'package:mars/models/prodact_model.dart';
import 'package:mars/widgets/divider_prdact_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // custom search bar
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: SizedBox(height: 35.h, child: const CustomSearchBar()),
          ),

          SizedBox(
            height: SizeApp.screenHeight! * 1 - 182.h,
            child: SingleChildScrollView(
              physics: const ScrollPhysics(),
              child: Column(
                children: [
                  // ads panner
                  BlocProvider(
                    create: (context) => IndecatoradsBloc(),
                    child: const AdsBanner(),
                  ),
                  const DividerProdctText(
                    textDevider: "divider_all_procuct_msg",
                  ),

                  // viow prodictes
                  CustomViewProdicts(listModelName: prodactModel.prodactList),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
