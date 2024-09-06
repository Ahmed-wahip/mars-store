import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mars/core/color_app.dart';
import 'package:mars/core/size_app.dart';
import 'package:mars/functions/refresh_app_functions.dart';
import 'package:mars/package/loader.dart';
import 'package:mars/style/style_box_shadow.dart';

class CardProdct extends StatelessWidget {
  const CardProdct({
    super.key,
    required this.prodctTitel,
    required this.price,
    required this.prodctImage,
    required this.onPressed,
  });
  final String prodctTitel, price, prodctImage;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Container(
            width: 145.w,
            height: 150.h,
            decoration: BoxDecoration(
              color: ColorApp.backgroundColor,
              borderRadius: BorderRadius.circular(SizeApp.radiusSize as double),
              boxShadow: [styleBoxShadow.primerBoxShadow],
              image: refreshAppFunctions.isRefresh
                  ? null
                  : DecorationImage(
                      image: AssetImage(prodctImage),
                      fit: BoxFit.fill,
                    ),
            ),
            child: refreshAppFunctions.isRefresh
                ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Loader(
                      dotOneColor: ColorApp.titelColor,
                      dotThreeColor: ColorApp.primerColor,
                      dotTwoColor: ColorApp.hintColor,
                    ),
                  )
                : null,
          ),
        ),
        ListTile(
          title: Text(
            textAlign: TextAlign.start,
            prodctTitel,
            style: TextStyle(color: ColorApp.titelColor, fontSize: 16),
          ),
          subtitle: Text(
            textAlign: TextAlign.start,
            "$price g.m",
            style: TextStyle(
              color: ColorApp.descriptionColor,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

