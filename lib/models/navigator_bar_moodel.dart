import 'package:mars/core/icon_app.dart';
import 'package:mars/data/navgator_bat_data.dart';
import 'package:mars/screens/home_screen.dart';
import 'package:mars/screens/orders_screen.dart';
import 'package:mars/screens/setting_screen.dart';
import 'package:mars/screens/shopping_car_screen.dart';

NavigatorbarModel navigatorBarModel = NavigatorbarModel();

class NavigatorbarModel {
  List<NavigatorData> navigatorList = [
    NavigatorData(
      svgIcon: iconApp.homeIcon,
      screen: const HomeScreen(),
    ),
    NavigatorData(
      svgIcon: iconApp.shoppingIcon,
      screen: const ShoppingCarScreen(),
    ),
    NavigatorData(
      svgIcon: iconApp.orderIcon,
      screen: const OrdersScreen(),
    ),
    NavigatorData(
      svgIcon: iconApp.settingsIcon,
      screen: const SettingScreen(),
    ),
  ];
}
