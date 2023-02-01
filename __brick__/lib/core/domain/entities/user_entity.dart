import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_entity.freezed.dart';

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    required String username,
    required int favouriteInteger,
    required double favouriteDouble,
    required String url,
    required String htmlUrl,
    required List<String> tags,
    required List<int> randomIntegers,
    required List<double> randomDoubles,
    required PersonalInfoEntity personalInfo,
  }) = _UserEntity;
}

@freezed
class PersonalInfoEntity with _$PersonalInfoEntity {
  const factory PersonalInfoEntity({
    required String firstName,
    required String lastName,
    required String location,
    required List<PhonesEntity> phones,
  }) = _PersonalInfoEntity;
}

@freezed
class PhonesEntity with _$PhonesEntity {
  const factory PhonesEntity({
    required String type,
    required String number,
    required bool shouldCall,
  }) = _PhonesEntity;
}
