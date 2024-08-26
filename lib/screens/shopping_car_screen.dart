import 'package:flutter/material.dart';
import 'package:mars/components/info_car_prodict.dart';
import 'package:mars/core/color_app.dart';
import 'package:mars/custom/custom_titel_bar.dart';

class ShoppingCarScreen extends StatelessWidget {
  const ShoppingCarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.backgroundColor,
      body: Column(
        children: [
          const CustomTitelBar(text: "shopping_car_titel_msg"),
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) => const InfoCarProdict(),
            ),
          ),
        ],
      ),
    );
  }
}
