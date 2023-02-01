import 'package:freezed_annotation/freezed_annotation.dart';

part 'guess_nationality_entity.freezed.dart';

@freezed
class GuessNationalityEntity with _$GuessNationalityEntity {
  const factory GuessNationalityEntity({
    required String? name,
    required List<CountryEntity> country,
  }) = _GuessNationalityEntity;
}

@freezed
class CountryEntity with _$CountryEntity {
  const factory CountryEntity({
    required String countryId,
    required double probability,
  }) = _CountryEntity;
}
