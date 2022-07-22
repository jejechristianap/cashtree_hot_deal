import '../../data/model/example_model.dart';

abstract class ExampleRepository {
  Future<ExampleModel> exampleRepo();
}
