import 'package:cashtree_hot_deal/src/data/datasource/example_remote_datasource.dart';
import 'package:cashtree_hot_deal/src/data/model/example_model.dart';
import 'package:cashtree_hot_deal/src/domain/repository/example_repository.dart';

class ExampleRepositoryImpl implements ExampleRepository {
  final ExampleRemoteDatasourceImpl exampleRemoteDatasourceImpl;

  ExampleRepositoryImpl(this.exampleRemoteDatasourceImpl);

  @override
  Future<ExampleModel> exampleRepo() async {
    final remoteExample = await exampleRemoteDatasourceImpl.exampleCall();
    return remoteExample;
  }
}
