import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_user_model.freezed.dart';

@freezed
class RequestUserModel with _$RequestUserModel {
  const factory RequestUserModel({
    required String id,
  }) = _RequestUserModel;
}
