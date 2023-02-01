import 'package:dartz/dartz.dart';
import 'package:{{project_name}}/core/core.dart';
import 'package:{{project_name}}/core/domain/entities/user_entity.dart';

abstract class UserRepository {
  Future<Either<Failure, UserEntity>> getUser();
}
