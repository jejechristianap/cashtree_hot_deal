import 'dart:developer';

import 'package:cashtree_hot_deal/src/data/providers/remote/api_provider.dart';
import 'package:cashtree_hot_deal/src/data/model/example_model.dart';

abstract class ExampleRemoteDatasource {
  Future<ExampleModel> exampleCall();
}

class ExampleRemoteDatasourceImpl extends ExampleRemoteDatasource {
  final ApiProvider apiProvider;

  ExampleRemoteDatasourceImpl(this.apiProvider);

  @override
  Future<ExampleModel> exampleCall() async {
    log('ExampleRemoteDatasourceImpl exampleCall()');
    final Map<String, dynamic> jsonResponse =
        await apiProvider.get(endPoint: 'todos/1', query: {'data': 'string'});
    final data = ExampleModel.fromJson(jsonResponse);
    log('response: ${data.toJson()}');
    return data;
  }
}
