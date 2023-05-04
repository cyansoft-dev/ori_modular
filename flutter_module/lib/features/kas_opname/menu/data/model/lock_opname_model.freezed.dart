// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lock_opname_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LockOpnameModel _$LockOpnameModelFromJson(Map<String, dynamic> json) {
  return _LockOpnameModel.fromJson(json);
}

/// @nodoc
mixin _$LockOpnameModel {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "key")
  String? get secretKey => throw _privateConstructorUsedError;
  @JsonKey(name: "vector_key")
  String? get vectorKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LockOpnameModelCopyWith<LockOpnameModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LockOpnameModelCopyWith<$Res> {
  factory $LockOpnameModelCopyWith(
          LockOpnameModel value, $Res Function(LockOpnameModel) then) =
      _$LockOpnameModelCopyWithImpl<$Res, LockOpnameModel>;
  @useResult
  $Res call(
      {int? code,
      String? message,
      @JsonKey(name: "key") String? secretKey,
      @JsonKey(name: "vector_key") String? vectorKey});
}

/// @nodoc
class _$LockOpnameModelCopyWithImpl<$Res, $Val extends LockOpnameModel>
    implements $LockOpnameModelCopyWith<$Res> {
  _$LockOpnameModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? secretKey = freezed,
    Object? vectorKey = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      secretKey: freezed == secretKey
          ? _value.secretKey
          : secretKey // ignore: cast_nullable_to_non_nullable
              as String?,
      vectorKey: freezed == vectorKey
          ? _value.vectorKey
          : vectorKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LockOpnameModelCopyWith<$Res>
    implements $LockOpnameModelCopyWith<$Res> {
  factory _$$_LockOpnameModelCopyWith(
          _$_LockOpnameModel value, $Res Function(_$_LockOpnameModel) then) =
      __$$_LockOpnameModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? code,
      String? message,
      @JsonKey(name: "key") String? secretKey,
      @JsonKey(name: "vector_key") String? vectorKey});
}

/// @nodoc
class __$$_LockOpnameModelCopyWithImpl<$Res>
    extends _$LockOpnameModelCopyWithImpl<$Res, _$_LockOpnameModel>
    implements _$$_LockOpnameModelCopyWith<$Res> {
  __$$_LockOpnameModelCopyWithImpl(
      _$_LockOpnameModel _value, $Res Function(_$_LockOpnameModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? secretKey = freezed,
    Object? vectorKey = freezed,
  }) {
    return _then(_$_LockOpnameModel(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      secretKey: freezed == secretKey
          ? _value.secretKey
          : secretKey // ignore: cast_nullable_to_non_nullable
              as String?,
      vectorKey: freezed == vectorKey
          ? _value.vectorKey
          : vectorKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LockOpnameModel implements _LockOpnameModel {
  const _$_LockOpnameModel(
      {this.code,
      this.message,
      @JsonKey(name: "key") this.secretKey,
      @JsonKey(name: "vector_key") this.vectorKey});

  factory _$_LockOpnameModel.fromJson(Map<String, dynamic> json) =>
      _$$_LockOpnameModelFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  @JsonKey(name: "key")
  final String? secretKey;
  @override
  @JsonKey(name: "vector_key")
  final String? vectorKey;

  @override
  String toString() {
    return 'LockOpnameModel(code: $code, message: $message, secretKey: $secretKey, vectorKey: $vectorKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LockOpnameModel &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.secretKey, secretKey) ||
                other.secretKey == secretKey) &&
            (identical(other.vectorKey, vectorKey) ||
                other.vectorKey == vectorKey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, code, message, secretKey, vectorKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LockOpnameModelCopyWith<_$_LockOpnameModel> get copyWith =>
      __$$_LockOpnameModelCopyWithImpl<_$_LockOpnameModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LockOpnameModelToJson(
      this,
    );
  }
}

abstract class _LockOpnameModel implements LockOpnameModel {
  const factory _LockOpnameModel(
          {final int? code,
          final String? message,
          @JsonKey(name: "key") final String? secretKey,
          @JsonKey(name: "vector_key") final String? vectorKey}) =
      _$_LockOpnameModel;

  factory _LockOpnameModel.fromJson(Map<String, dynamic> json) =
      _$_LockOpnameModel.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  @JsonKey(name: "key")
  String? get secretKey;
  @override
  @JsonKey(name: "vector_key")
  String? get vectorKey;
  @override
  @JsonKey(ignore: true)
  _$$_LockOpnameModelCopyWith<_$_LockOpnameModel> get copyWith =>
      throw _privateConstructorUsedError;
}
