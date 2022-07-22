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

  @override
  void onInit() {
    super.onInit();
    testCall();
  }

  void testCall() async {
    _example = ResponseClassify.loading();
    update();
    try {
      _example =
          ResponseClassify.completed(await _exampleUseCase.call(NoParams()));
    } catch (e) {
      _example = ResponseClassify.error(e.toString());
    }
    update();
  }
}
