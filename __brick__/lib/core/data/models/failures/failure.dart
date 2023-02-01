import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
abstract class Failure with _$Failure {
  const factory Failure.server([
    @Default("There's problem with server") String message,
  ]) = ServerFailure;
  const factory Failure.network([
    @Default("No internet connection") String message,
  ]) = NetworkFailure;
  const factory Failure.socket([
    @Default("Request timeout") String message,
  ]) = SocketFailure;
}
