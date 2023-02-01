import 'package:{{project_name}}/core/domain/entities/guess_nationality_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'guess_nationality_model.freezed.dart';
part 'guess_nationality_model.g.dart';

@freezed
class GuessNationalityModel with _$GuessNationalityModel {
  const factory GuessNationalityModel({
    required String? name,
    required List<CountryModel> country,
  }) = _GuessNationalityModel;

  factory GuessNationalityModel.fromJson(Map<String, Object?> json) =>
      _$GuessNationalityModelFromJson(json);
}

@freezed
class CountryModel with _$CountryModel {
  const factory CountryModel({
    required String countryId,
    required double probability,
  }) = _CountryModel;

  factory CountryModel.fromJson(Map<String, Object?> json) =>
      _$CountryModelFromJson(json);
}

extension GuessNationalityModelX on GuessNationalityModel {
  GuessNationalityEntity toEntity() {
    return GuessNationalityEntity(
      name: name,
      country: List.from(country.map((e) => e.toEntity())),
    );
  }
}

extension CountryModelX on CountryModel {
  CountryEntity toEntity() {
    return CountryEntity(
      countryId: countryId,
      probability: probability,
    );
  }
}
