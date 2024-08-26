import 'package:flutter/material.dart';
import 'package:mars/components/detlails_prodict_image.dart';
import 'package:mars/components/info_detiails_icon.dart';
import 'package:mars/components/info_shopping_button.dart';
import 'package:mars/components/list_prodect_tiel.dart';
import 'package:mars/components/prodact_detlails_text.dart';
import 'package:mars/core/color_app.dart';
import 'package:mars/core/icon_app.dart';
import 'package:mars/core/size_app.dart';
import 'package:mars/functions/detlails_functions.dart';
import 'package:mars/models/prodact_model.dart';
import 'package:mars/package/indecator_babel_packge.dart';

class DetlailsScreen extends StatelessWidget {
  const DetlailsScreen({
    super.key,
    required this.prodictImage,
    required this.descriptionProdact,
    required this.titelProcat,
    required this.price,
    required this.detlailsText,
    required this.index,
  });
  final List<String> prodictImage;
  final String descriptionProdact;
  final String titelProcat;
  final String price;
  final String detlailsText;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.backgroundColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                DetlailsProdictImage(
                  prodictImage: prodictImage,
                  index: index,
                ),
                SizedBox(
                  height: SizeApp.screenHeight! * 0.60,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          DetlailsIcon(
                            onPressed: () => Navigator.pop(context),
                            svgIcon: iconApp.angleLeftIcon,
                          ),
                          DetlailsIcon(
                            onPressed: () =>
                                detlailsFunctions.bookMark(context),
                            svgIcon: iconApp.bookMarkIcon,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ...List.generate(
                              prodactModel
                                  .prodactList[index].prodctImage.length,
                              (index) => Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: IndecatorBabelPackge(
                                  isActive: index == 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            ListProdectTiel(
              descriptionProdact: descriptionProdact,
              titelProcat: titelProcat,
              price: price,
            ),
            ProdactDetlailsText(detlailsText: detlailsText),
            ShoppingButton(
              addToCar: () => detlailsFunctions.addToCar(context),
              shoopingPrees: () => detlailsFunctions.shopping(context),
            )
          ],
        ),
      ),
    );
  }
}
