import 'package:cashtree_hot_deal/src/presentation/splash/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: controller,
      builder: (_) => const Scaffold(
        body: Center(child: Text('Splash Screen')),
      ),
    );
  }
}
