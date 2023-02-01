// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guess_nationality_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GuessNationalityModel _$$_GuessNationalityModelFromJson(
        Map<String, dynamic> json) =>
    _$_GuessNationalityModel(
      name: json['name'] as String?,
      country: (json['country'] as List<dynamic>)
          .map((e) => CountryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GuessNationalityModelToJson(
    _$_GuessNationalityModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  val['country'] = instance.country;
  return val;
}

_$_CountryModel _$$_CountryModelFromJson(Map<String, dynamic> json) =>
    _$_CountryModel(
      countryId: json['country_id'] as String,
      probability: (json['probability'] as num).toDouble(),
    );

Map<String, dynamic> _$$_CountryModelToJson(_$_CountryModel instance) =>
    <String, dynamic>{
      'country_id': instance.countryId,
      'probability': instance.probability,
    };
