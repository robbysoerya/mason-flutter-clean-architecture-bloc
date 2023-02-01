// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'guess_nationality_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GuessNationalityEntity {
  String? get name => throw _privateConstructorUsedError;
  List<CountryEntity> get country => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GuessNationalityEntityCopyWith<GuessNationalityEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuessNationalityEntityCopyWith<$Res> {
  factory $GuessNationalityEntityCopyWith(GuessNationalityEntity value,
          $Res Function(GuessNationalityEntity) then) =
      _$GuessNationalityEntityCopyWithImpl<$Res, GuessNationalityEntity>;
  @useResult
  $Res call({String? name, List<CountryEntity> country});
}

/// @nodoc
class _$GuessNationalityEntityCopyWithImpl<$Res,
        $Val extends GuessNationalityEntity>
    implements $GuessNationalityEntityCopyWith<$Res> {
  _$GuessNationalityEntityCopyWithImpl(this._value, this._then);

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
              as List<CountryEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GuessNationalityEntityCopyWith<$Res>
    implements $GuessNationalityEntityCopyWith<$Res> {
  factory _$$_GuessNationalityEntityCopyWith(_$_GuessNationalityEntity value,
          $Res Function(_$_GuessNationalityEntity) then) =
      __$$_GuessNationalityEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, List<CountryEntity> country});
}

/// @nodoc
class __$$_GuessNationalityEntityCopyWithImpl<$Res>
    extends _$GuessNationalityEntityCopyWithImpl<$Res,
        _$_GuessNationalityEntity>
    implements _$$_GuessNationalityEntityCopyWith<$Res> {
  __$$_GuessNationalityEntityCopyWithImpl(_$_GuessNationalityEntity _value,
      $Res Function(_$_GuessNationalityEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? country = null,
  }) {
    return _then(_$_GuessNationalityEntity(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      country: null == country
          ? _value._country
          : country // ignore: cast_nullable_to_non_nullable
              as List<CountryEntity>,
    ));
  }
}

/// @nodoc

class _$_GuessNationalityEntity implements _GuessNationalityEntity {
  const _$_GuessNationalityEntity(
      {required this.name, required final List<CountryEntity> country})
      : _country = country;

  @override
  final String? name;
  final List<CountryEntity> _country;
  @override
  List<CountryEntity> get country {
    if (_country is EqualUnmodifiableListView) return _country;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_country);
  }

  @override
  String toString() {
    return 'GuessNationalityEntity(name: $name, country: $country)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GuessNationalityEntity &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._country, _country));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_country));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GuessNationalityEntityCopyWith<_$_GuessNationalityEntity> get copyWith =>
      __$$_GuessNationalityEntityCopyWithImpl<_$_GuessNationalityEntity>(
          this, _$identity);
}

abstract class _GuessNationalityEntity implements GuessNationalityEntity {
  const factory _GuessNationalityEntity(
      {required final String? name,
      required final List<CountryEntity> country}) = _$_GuessNationalityEntity;

  @override
  String? get name;
  @override
  List<CountryEntity> get country;
  @override
  @JsonKey(ignore: true)
  _$$_GuessNationalityEntityCopyWith<_$_GuessNationalityEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CountryEntity {
  String get countryId => throw _privateConstructorUsedError;
  double get probability => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CountryEntityCopyWith<CountryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryEntityCopyWith<$Res> {
  factory $CountryEntityCopyWith(
          CountryEntity value, $Res Function(CountryEntity) then) =
      _$CountryEntityCopyWithImpl<$Res, CountryEntity>;
  @useResult
  $Res call({String countryId, double probability});
}

/// @nodoc
class _$CountryEntityCopyWithImpl<$Res, $Val extends CountryEntity>
    implements $CountryEntityCopyWith<$Res> {
  _$CountryEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$_CountryEntityCopyWith<$Res>
    implements $CountryEntityCopyWith<$Res> {
  factory _$$_CountryEntityCopyWith(
          _$_CountryEntity value, $Res Function(_$_CountryEntity) then) =
      __$$_CountryEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String countryId, double probability});
}

/// @nodoc
class __$$_CountryEntityCopyWithImpl<$Res>
    extends _$CountryEntityCopyWithImpl<$Res, _$_CountryEntity>
    implements _$$_CountryEntityCopyWith<$Res> {
  __$$_CountryEntityCopyWithImpl(
      _$_CountryEntity _value, $Res Function(_$_CountryEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryId = null,
    Object? probability = null,
  }) {
    return _then(_$_CountryEntity(
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

class _$_CountryEntity implements _CountryEntity {
  const _$_CountryEntity({required this.countryId, required this.probability});

  @override
  final String countryId;
  @override
  final double probability;

  @override
  String toString() {
    return 'CountryEntity(countryId: $countryId, probability: $probability)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CountryEntity &&
            (identical(other.countryId, countryId) ||
                other.countryId == countryId) &&
            (identical(other.probability, probability) ||
                other.probability == probability));
  }

  @override
  int get hashCode => Object.hash(runtimeType, countryId, probability);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CountryEntityCopyWith<_$_CountryEntity> get copyWith =>
      __$$_CountryEntityCopyWithImpl<_$_CountryEntity>(this, _$identity);
}

abstract class _CountryEntity implements CountryEntity {
  const factory _CountryEntity(
      {required final String countryId,
      required final double probability}) = _$_CountryEntity;

  @override
  String get countryId;
  @override
  double get probability;
  @override
  @JsonKey(ignore: true)
  _$$_CountryEntityCopyWith<_$_CountryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
