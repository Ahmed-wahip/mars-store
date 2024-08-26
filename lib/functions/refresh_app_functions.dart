import 'package:flutter/material.dart';

class RefreshAppFunctions {
  bool isRefresh = false;
  Future<void> onRefresh(BuildContext context) async {
    isRefresh = true;
    await Future.delayed(const Duration(milliseconds: 200));
    isRefresh = false;
  }
}

RefreshAppFunctions refreshAppFunctions = RefreshAppFunctions();
