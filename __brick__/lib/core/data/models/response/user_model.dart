import 'package:{{project_name}}/core/domain/entities/user_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String username,
    required int favouriteInteger,
    required double favouriteDouble,
    required String url,
    required String htmlUrl,
    required List<String> tags,
    required List<int> randomIntegers,
    required List<double> randomDoubles,
    required PersonalInfoModel personalInfo,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

extension UserModelX on UserModel {
  UserEntity toEntity() {
    return UserEntity(
      username: username,
      favouriteInteger: favouriteInteger,
      favouriteDouble: favouriteDouble,
      url: url,
      htmlUrl: htmlUrl,
      tags: tags,
      randomIntegers: randomIntegers,
      randomDoubles: randomDoubles,
      personalInfo: personalInfo.toEntity(),
    );
  }
}

@freezed
class PersonalInfoModel with _$PersonalInfoModel {
  const factory PersonalInfoModel({
    required String firstName,
    required String lastName,
    required String location,
    required List<PhonesModel> phones,
  }) = _PersonalInfoModel;

  factory PersonalInfoModel.fromJson(Map<String, dynamic> json) =>
      _$PersonalInfoModelFromJson(json);
}

extension PersonalInfoModelX on PersonalInfoModel {
  PersonalInfoEntity toEntity() {
    return PersonalInfoEntity(
      firstName: firstName,
      lastName: lastName,
      location: location,
      phones: List.from(phones.map((e) => e.toEntity())),
    );
  }
}

@freezed
class PhonesModel with _$PhonesModel {
  const factory PhonesModel({
    required String type,
    required String number,
    required bool shouldCall,
  }) = _PhonesModel;

  factory PhonesModel.fromJson(Map<String, dynamic> json) =>
      _$PhonesModelFromJson(json);
}

extension PhonesModelX on PhonesModel {
  PhonesEntity toEntity() {
    return PhonesEntity(
      type: type,
      number: number,
      shouldCall: shouldCall,
    );
  }
}
