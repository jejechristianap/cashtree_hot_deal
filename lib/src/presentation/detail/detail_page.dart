import 'dart:developer';

import 'package:cashtree_hot_deal/src/presentation/detail/detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/main_toolbar.dart';

class DetailPage extends GetView<DetailController> {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: controller,
      builder: (_) {
        return Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: MainToolbar(
              onBellTap: () {
                log('Bell Tap');
              },
              onMessageTap: () {
                log('Message Tap');
              },
              onLoginTap: () {
                log('Login Tap');
              },
            ),
          ),
          body: Center(
            child: Text(controller.data.title.toString()),
          ),
        );
      },
    );
  }
}
