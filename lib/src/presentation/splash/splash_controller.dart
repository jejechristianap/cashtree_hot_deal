import 'package:cashtree_hot_deal/src/config/route/route_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    debugPrint('start...');
    checkUserSession();
  }

  checkUserSession() async {
    await 1.delay();
    Get.offNamed(RouteConstant.home);
  }
}
