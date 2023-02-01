import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:{{project_name}}/core/core.dart';

class GuessNationalityRepositoryImpl implements GuessNationalityRepository {
  final GuessNationalityRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  GuessNationalityRepositoryImpl({
    required this.remoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, GuessNationalityEntity>> getNationality(
      String name) async {
    if (await networkInfo.isConnected) {
      try {
        final resp = await remoteDataSource.getNationality(name);
        return Right(resp);
      } on ServerException {
        return const Left(ServerFailure());
      } on SocketException catch (e) {
        return Left(SocketFailure(e.message));
      }
    } else {
      return const Left(NetworkFailure());
    }
  }
}
