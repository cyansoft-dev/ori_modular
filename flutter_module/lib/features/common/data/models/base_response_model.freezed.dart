// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BaseResponseModel _$BaseResponseModelFromJson(Map<String, dynamic> json) {
  return _CommonResponseModel.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseModel {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BaseResponseModelCopyWith<BaseResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseModelCopyWith<$Res> {
  factory $BaseResponseModelCopyWith(
          BaseResponseModel value, $Res Function(BaseResponseModel) then) =
      _$BaseResponseModelCopyWithImpl<$Res, BaseResponseModel>;
  @useResult
  $Res call({int? code, String? message});
}

/// @nodoc
class _$BaseResponseModelCopyWithImpl<$Res, $Val extends BaseResponseModel>
    implements $BaseResponseModelCopyWith<$Res> {
  _$BaseResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CommonResponseModelCopyWith<$Res>
    implements $BaseResponseModelCopyWith<$Res> {
  factory _$$_CommonResponseModelCopyWith(_$_CommonResponseModel value,
          $Res Function(_$_CommonResponseModel) then) =
      __$$_CommonResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message});
}

/// @nodoc
class __$$_CommonResponseModelCopyWithImpl<$Res>
    extends _$BaseResponseModelCopyWithImpl<$Res, _$_CommonResponseModel>
    implements _$$_CommonResponseModelCopyWith<$Res> {
  __$$_CommonResponseModelCopyWithImpl(_$_CommonResponseModel _value,
      $Res Function(_$_CommonResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_CommonResponseModel(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommonResponseModel implements _CommonResponseModel {
  const _$_CommonResponseModel({this.code, this.message});

  factory _$_CommonResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_CommonResponseModelFromJson(json);

  @override
  final int? code;
  @override
  final String? message;

  @override
  String toString() {
    return 'BaseResponseModel(code: $code, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommonResponseModel &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommonResponseModelCopyWith<_$_CommonResponseModel> get copyWith =>
      __$$_CommonResponseModelCopyWithImpl<_$_CommonResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommonResponseModelToJson(
      this,
    );
  }
}

abstract class _CommonResponseModel implements BaseResponseModel {
  const factory _CommonResponseModel({final int? code, final String? message}) =
      _$_CommonResponseModel;

  factory _CommonResponseModel.fromJson(Map<String, dynamic> json) =
      _$_CommonResponseModel.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_CommonResponseModelCopyWith<_$_CommonResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
