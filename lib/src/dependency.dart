import 'package:cashtree_hot_deal/src/data/providers/remote/api_provider.dart';
import 'package:cashtree_hot_deal/src/data/repository/example_repository_impl.dart';
import 'package:get/get.dart';

import 'data/datasource/example_remote_datasource.dart';

class Dependency {
  static init() {
    Get.lazyPut(() => ApiProvider());
    Get.lazyPut(() => ExampleRemoteDatasourceImpl(Get.find()));
    Get.lazyPut(() => ExampleRepositoryImpl(Get.find()));
  }
}
