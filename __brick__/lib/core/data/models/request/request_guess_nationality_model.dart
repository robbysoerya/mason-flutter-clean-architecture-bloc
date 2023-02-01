import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_guess_nationality_model.freezed.dart';

@freezed
class RequestGuessNationalityModel with _$RequestGuessNationalityModel {
  const factory RequestGuessNationalityModel({
    required String name,
  }) = _RequestGuessNationalityModel;
}
