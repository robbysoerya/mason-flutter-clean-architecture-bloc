import 'package:dartz/dartz.dart';
import 'package:{{project_name}}/core/data/models/failures/failure.dart';
import 'package:{{project_name}}/core/domain/entities/guess_nationality_entity.dart';

abstract class GuessNationalityRepository {
  Future<Either<Failure, GuessNationalityEntity>> getNationality(String name);
}
