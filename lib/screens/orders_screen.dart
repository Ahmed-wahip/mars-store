import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mars/bloc/counter_order/counter_bloc.dart';
import 'package:mars/components/info_order_card.dart';
import 'package:mars/core/color_app.dart';
import 'package:mars/core/localizations_app.dart';
import 'package:mars/core/size_app.dart';
import 'package:mars/custom/custom_titel_bar.dart';
import 'package:mars/style/style_text_description.dart';
import 'package:mars/style/style_text_titel.dart';
import 'package:mars/widgets/hero_button.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.backgroundColor,
      body: Column(
        children: [
          const CustomTitelBar(text: "orders_titel_msg"),
          Expanded(
            child: BlocProvider(
              create: (context) => CounterBloc(),
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) => const InfoOrderCard(),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: SizeApp.buttonHeghtSize! + 50,
        child: Row(
          children: [
            Expanded(
              child: ListTile(
                title: Text("total_price_msg".tr(context),
                    style: styleTextDescription()),
                subtitle: Text("258", style: styleTextTitel()),
              ),
            ),
            HeroButton(
              onPressed: () {},
              text: "buy_now_orders_msg",
              svgIcon: "",
              isBorder: false,
              isIcon: false,
              widthSize: SizeApp.screenWidth! / 2,
            ),
          ],
        ),
      ),
    );
  }
}
