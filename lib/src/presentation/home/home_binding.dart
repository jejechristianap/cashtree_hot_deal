import 'package:cashtree_hot_deal/src/data/repository/example_repository_impl.dart';
import 'package:cashtree_hot_deal/src/domain/use_cases/example_use_case.dart';
import 'package:cashtree_hot_deal/src/presentation/home/home_controller.dart';
import 'package:get/get.dart';

import '../../data/datasource/example_remote_datasource.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ExampleRemoteDatasourceImpl(Get.find()));
    Get.lazyPut(() => ExampleUseCase(Get.find<ExampleRepositoryImpl>()));
    Get.put(HomeController(Get.find()));
  }
}
