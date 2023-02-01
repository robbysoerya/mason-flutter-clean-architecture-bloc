// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      username: json['username'] as String,
      favouriteInteger: json['favourite_integer'] as int,
      favouriteDouble: (json['favourite_double'] as num).toDouble(),
      url: json['url'] as String,
      htmlUrl: json['html_url'] as String,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      randomIntegers: (json['random_integers'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
      randomDoubles: (json['random_doubles'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      personalInfo: PersonalInfoModel.fromJson(
          json['personal_info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'username': instance.username,
      'favourite_integer': instance.favouriteInteger,
      'favourite_double': instance.favouriteDouble,
      'url': instance.url,
      'html_url': instance.htmlUrl,
      'tags': instance.tags,
      'random_integers': instance.randomIntegers,
      'random_doubles': instance.randomDoubles,
      'personal_info': instance.personalInfo,
    };

_$_PersonalInfoModel _$$_PersonalInfoModelFromJson(Map<String, dynamic> json) =>
    _$_PersonalInfoModel(
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      location: json['location'] as String,
      phones: (json['phones'] as List<dynamic>)
          .map((e) => PhonesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PersonalInfoModelToJson(
        _$_PersonalInfoModel instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'location': instance.location,
      'phones': instance.phones,
    };

_$_PhonesModel _$$_PhonesModelFromJson(Map<String, dynamic> json) =>
    _$_PhonesModel(
      type: json['type'] as String,
      number: json['number'] as String,
      shouldCall: json['should_call'] as bool,
    );

Map<String, dynamic> _$$_PhonesModelToJson(_$_PhonesModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'number': instance.number,
      'should_call': instance.shouldCall,
    };
