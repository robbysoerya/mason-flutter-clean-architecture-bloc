import 'package:{{project_name}}/core/core.dart';
import 'package:dartz/dartz.dart';

class GetGuessNationalityUsecase {
  const GetGuessNationalityUsecase({required this.repository});
  final GuessNationalityRepository repository;

  Future<Either<Failure, GuessNationalityEntity>> execute(String name) {
    return repository.getNationality(name);
  }
}
