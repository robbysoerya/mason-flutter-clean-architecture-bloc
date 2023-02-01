// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RequestUserModel {
  String get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RequestUserModelCopyWith<RequestUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestUserModelCopyWith<$Res> {
  factory $RequestUserModelCopyWith(
          RequestUserModel value, $Res Function(RequestUserModel) then) =
      _$RequestUserModelCopyWithImpl<$Res, RequestUserModel>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$RequestUserModelCopyWithImpl<$Res, $Val extends RequestUserModel>
    implements $RequestUserModelCopyWith<$Res> {
  _$RequestUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RequestUserModelCopyWith<$Res>
    implements $RequestUserModelCopyWith<$Res> {
  factory _$$_RequestUserModelCopyWith(
          _$_RequestUserModel value, $Res Function(_$_RequestUserModel) then) =
      __$$_RequestUserModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_RequestUserModelCopyWithImpl<$Res>
    extends _$RequestUserModelCopyWithImpl<$Res, _$_RequestUserModel>
    implements _$$_RequestUserModelCopyWith<$Res> {
  __$$_RequestUserModelCopyWithImpl(
      _$_RequestUserModel _value, $Res Function(_$_RequestUserModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_RequestUserModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RequestUserModel implements _RequestUserModel {
  const _$_RequestUserModel({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'RequestUserModel(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestUserModel &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RequestUserModelCopyWith<_$_RequestUserModel> get copyWith =>
      __$$_RequestUserModelCopyWithImpl<_$_RequestUserModel>(this, _$identity);
}

abstract class _RequestUserModel implements RequestUserModel {
  const factory _RequestUserModel({required final String id}) =
      _$_RequestUserModel;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_RequestUserModelCopyWith<_$_RequestUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
