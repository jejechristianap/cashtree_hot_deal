import 'dart:developer';

import 'package:cashtree_hot_deal/src/config/route/route_constant.dart';
import 'package:cashtree_hot_deal/src/domain/entities/example_entity.dart';
import 'package:get/get.dart';

import '../../core/response_classify.dart';
import '../../core/use_case.dart';
import '../../data/model/example_model.dart';
import '../../domain/use_cases/example_use_case.dart';

class HomeController extends GetxController {
  final ExampleUseCase _exampleUseCase;
  HomeController(this._exampleUseCase);

  ResponseClassify<ExampleModel?> _example = ResponseClassify.loading();

  ResponseClassify<ExampleModel?> get example => _example;

  ResponseClassify<ExampleModel?> _exampleDetail = ResponseClassify.loading();

  ResponseClassify<ExampleModel?> get exampleDetail => _exampleDetail;

  @override
  void onInit() {
    super.onInit();
    log('onInit testCall()');
    testCall();
  }

  void testCall() async {
    log('testCall() Loading');
    _example = ResponseClassify.loading();
    update();
    try {
      _example =
          ResponseClassify.completed(await _exampleUseCase.call(NoParams()));
      log('testCall() Completed');
    } catch (e) {
      log('testCall() Error');
      _example = ResponseClassify.error(e.toString());
    }
    update();
    // ExampleEntity(completed: true, userId: 1, id: 1, title: '123');
  }

  void testCallDetail() async {
    log('testCall() Loading');
    _exampleDetail = ResponseClassify.loading();
    update();
    try {
      _exampleDetail =
          ResponseClassify.completed(await _exampleUseCase.call(NoParams()));
      log('testCall() Completed');
      Get.toNamed(RouteConstant.detail, arguments: exampleDetail.data);
    } catch (e) {
      log('testCall() Error');
      _exampleDetail = ResponseClassify.error(e.toString());
    }
    update();
    // ExampleEntity(completed: true, userId: 1, id: 1, title: '123');
  }
}
