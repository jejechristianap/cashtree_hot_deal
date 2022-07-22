import '../../core/use_case.dart';
import '../../data/model/example_model.dart';
import '../repository/example_repository.dart';

class ExampleUseCase extends UseCase<ExampleModel, NoParams> {
  final ExampleRepository exampleRepository;

  ExampleUseCase(this.exampleRepository);

  @override
  Future<ExampleModel> call(param) async =>
      await exampleRepository.exampleRepo();
}
