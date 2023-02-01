import 'package:{{project_name}}/core/data/models/failures/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.freezed.dart';

@freezed
abstract class AppStates<T> with _$AppStates<T> {
  const factory AppStates.initial() = Initial;
  const factory AppStates.loading() = Loading;
  const factory AppStates.empty() = Empty;
  const factory AppStates.success(T data) = Success<T>;
  const factory AppStates.error(Failure message) = Error;
}
