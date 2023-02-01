// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'guess_nationality_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GuessNationalityModel _$GuessNationalityModelFromJson(
    Map<String, dynamic> json) {
  return _GuessNationalityModel.fromJson(json);
}

/// @nodoc
mixin _$GuessNationalityModel {
  String? get name => throw _privateConstructorUsedError;
  List<CountryModel> get country => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GuessNationalityModelCopyWith<GuessNationalityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuessNationalityModelCopyWith<$Res> {
  factory $GuessNationalityModelCopyWith(GuessNationalityModel value,
          $Res Function(GuessNationalityModel) then) =
      _$GuessNationalityModelCopyWithImpl<$Res, GuessNationalityModel>;
  @useResult
  $Res call({String? name, List<CountryModel> country});
}

/// @nodoc
class _$GuessNationalityModelCopyWithImpl<$Res,
        $Val extends GuessNationalityModel>
    implements $GuessNationalityModelCopyWith<$Res> {
  _$GuessNationalityModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? country = null,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as List<CountryModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GuessNationalityModelCopyWith<$Res>
    implements $GuessNationalityModelCopyWith<$Res> {
  factory _$$_GuessNationalityModelCopyWith(_$_GuessNationalityModel value,
          $Res Function(_$_GuessNationalityModel) then) =
      __$$_GuessNationalityModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, List<CountryModel> country});
}

/// @nodoc
class __$$_GuessNationalityModelCopyWithImpl<$Res>
    extends _$GuessNationalityModelCopyWithImpl<$Res, _$_GuessNationalityModel>
    implements _$$_GuessNationalityModelCopyWith<$Res> {
  __$$_GuessNationalityModelCopyWithImpl(_$_GuessNationalityModel _value,
      $Res Function(_$_GuessNationalityModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? country = null,
  }) {
    return _then(_$_GuessNationalityModel(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      country: null == country
          ? _value._country
          : country // ignore: cast_nullable_to_non_nullable
              as List<CountryModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GuessNationalityModel implements _GuessNationalityModel {
  const _$_GuessNationalityModel(
      {required this.name, required final List<CountryModel> country})
      : _country = country;

  factory _$_GuessNationalityModel.fromJson(Map<String, dynamic> json) =>
      _$$_GuessNationalityModelFromJson(json);

  @override
  final String? name;
  final List<CountryModel> _country;
  @override
  List<CountryModel> get country {
    if (_country is EqualUnmodifiableListView) return _country;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_country);
  }

  @override
  String toString() {
    return 'GuessNationalityModel(name: $name, country: $country)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GuessNationalityModel &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._country, _country));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_country));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GuessNationalityModelCopyWith<_$_GuessNationalityModel> get copyWith =>
      __$$_GuessNationalityModelCopyWithImpl<_$_GuessNationalityModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GuessNationalityModelToJson(
      this,
    );
  }
}

abstract class _GuessNationalityModel implements GuessNationalityModel {
  const factory _GuessNationalityModel(
      {required final String? name,
      required final List<CountryModel> country}) = _$_GuessNationalityModel;

  factory _GuessNationalityModel.fromJson(Map<String, dynamic> json) =
      _$_GuessNationalityModel.fromJson;

  @override
  String? get name;
  @override
  List<CountryModel> get country;
  @override
  @JsonKey(ignore: true)
  _$$_GuessNationalityModelCopyWith<_$_GuessNationalityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

CountryModel _$CountryModelFromJson(Map<String, dynamic> json) {
  return _CountryModel.fromJson(json);
}

/// @nodoc
mixin _$CountryModel {
  String get countryId => throw _privateConstructorUsedError;
  double get probability => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountryModelCopyWith<CountryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryModelCopyWith<$Res> {
  factory $CountryModelCopyWith(
          CountryModel value, $Res Function(CountryModel) then) =
      _$CountryModelCopyWithImpl<$Res, CountryModel>;
  @useResult
  $Res call({String countryId, double probability});
}

/// @nodoc
class _$CountryModelCopyWithImpl<$Res, $Val extends CountryModel>
    implements $CountryModelCopyWith<$Res> {
  _$CountryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryId = null,
    Object? probability = null,
  }) {
    return _then(_value.copyWith(
      countryId: null == countryId
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as String,
      probability: null == probability
          ? _value.probability
          : probability // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CountryModelCopyWith<$Res>
    implements $CountryModelCopyWith<$Res> {
  factory _$$_CountryModelCopyWith(
          _$_CountryModel value, $Res Function(_$_CountryModel) then) =
      __$$_CountryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String countryId, double probability});
}

/// @nodoc
class __$$_CountryModelCopyWithImpl<$Res>
    extends _$CountryModelCopyWithImpl<$Res, _$_CountryModel>
    implements _$$_CountryModelCopyWith<$Res> {
  __$$_CountryModelCopyWithImpl(
      _$_CountryModel _value, $Res Function(_$_CountryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryId = null,
    Object? probability = null,
  }) {
    return _then(_$_CountryModel(
      countryId: null == countryId
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as String,
      probability: null == probability
          ? _value.probability
          : probability // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CountryModel implements _CountryModel {
  const _$_CountryModel({required this.countryId, required this.probability});

  factory _$_CountryModel.fromJson(Map<String, dynamic> json) =>
      _$$_CountryModelFromJson(json);

  @override
  final String countryId;
  @override
  final double probability;

  @override
  String toString() {
    return 'CountryModel(countryId: $countryId, probability: $probability)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CountryModel &&
            (identical(other.countryId, countryId) ||
                other.countryId == countryId) &&
            (identical(other.probability, probability) ||
                other.probability == probability));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, countryId, probability);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CountryModelCopyWith<_$_CountryModel> get copyWith =>
      __$$_CountryModelCopyWithImpl<_$_CountryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CountryModelToJson(
      this,
    );
  }
}

abstract class _CountryModel implements CountryModel {
  const factory _CountryModel(
      {required final String countryId,
      required final double probability}) = _$_CountryModel;

  factory _CountryModel.fromJson(Map<String, dynamic> json) =
      _$_CountryModel.fromJson;

  @override
  String get countryId;
  @override
  double get probability;
  @override
  @JsonKey(ignore: true)
  _$$_CountryModelCopyWith<_$_CountryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
