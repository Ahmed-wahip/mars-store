import 'package:flutter/material.dart';
import 'package:mars/data/prodict_data.dart';
import 'package:mars/models/prodact_model.dart';
import 'package:mars/screens/detlails_screen.dart';
import 'package:mars/widgets/card_prodct.dart';

class CustomViewProdicts extends StatelessWidget {
  const CustomViewProdicts({
    super.key,
    required this.listModelName,
  });
  final List<ProdictData> listModelName;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.68,
        // mainAxisSpacing: 2,
        // crossAxisSpacing: 5,
      ),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: prodactModel.prodactList.length,
      itemBuilder: (context, index) => CardProdct(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetlailsScreen(
              index: index,
              prodictImage: listModelName[index].prodctImage,
              descriptionProdact: listModelName[index].prodctDescription,
              titelProcat: listModelName[index].prdctTitel,
              price: "${listModelName[index].prodctPrice}",
            ),
          ),
        ),
        prodctImage: listModelName[index].prodctImage[0],
        prodctTitel: listModelName[index].prdctTitel,
        price: "${listModelName[index].prodctPrice}",
      ),
    );
  }
}
