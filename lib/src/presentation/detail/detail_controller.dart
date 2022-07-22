import 'dart:developer';

import 'package:cashtree_hot_deal/src/data/model/example_model.dart';
import 'package:get/get.dart';

class DetailController extends GetxController {
  var data = ExampleModel();

  @override
  void onInit() {
    super.onInit();
    final _data = Get.arguments;
    //log('onInit detail(): ${_data.toJson()}');
    if (_data != null) {
      data = _data;
      // update();
    }
  }
}
