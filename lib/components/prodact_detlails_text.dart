import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mars/core/color_app.dart';
import 'package:mars/core/font_app.dart';
import 'package:mars/functions/procact_functions.dart';
import 'package:mars/widgets/rating_prodict.dart';

class ProdactDetlailsText extends StatelessWidget {
  const ProdactDetlailsText({
    super.key,
 
    required this.descriptionProdact,
  });

  final String  descriptionProdact;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: ListTile(
        title: Row(
          children: [
            Text(
              "${procactFunctions.rating}",
              style: TextStyle(
                fontSize: 17.w,
                fontFamily: fontApp.bigText,
                fontWeight: FontWeight.w700,
                color: ColorApp.titelColor,
              ),
            ),
            RatingProdict(
              color: ColorApp.primerColor,
              initialRating: procactFunctions.rating,
              size: 30,
              onRated: (value) {
                procactFunctions.rating = value;
              },
            ),
          ],
        ),
        subtitle: Column(
          children: [
            Text(
              textAlign: TextAlign.start,
              descriptionProdact,
              style: TextStyle(
                color: ColorApp.supColor,
                fontSize: 16.r,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
