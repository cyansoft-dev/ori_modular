// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kas_master_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

KasMasterModel _$KasMasterModelFromJson(Map<String, dynamic> json) {
  return _KasMasterModel.fromJson(json);
}

/// @nodoc
mixin _$KasMasterModel {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KasMasterModelCopyWith<KasMasterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KasMasterModelCopyWith<$Res> {
  factory $KasMasterModelCopyWith(
          KasMasterModel value, $Res Function(KasMasterModel) then) =
      _$KasMasterModelCopyWithImpl<$Res, KasMasterModel>;
  @useResult
  $Res call({int? code, String? message});
}

/// @nodoc
class _$KasMasterModelCopyWithImpl<$Res, $Val extends KasMasterModel>
    implements $KasMasterModelCopyWith<$Res> {
  _$KasMasterModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_KasMasterModelCopyWith<$Res>
    implements $KasMasterModelCopyWith<$Res> {
  factory _$$_KasMasterModelCopyWith(
          _$_KasMasterModel value, $Res Function(_$_KasMasterModel) then) =
      __$$_KasMasterModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message});
}

/// @nodoc
class __$$_KasMasterModelCopyWithImpl<$Res>
    extends _$KasMasterModelCopyWithImpl<$Res, _$_KasMasterModel>
    implements _$$_KasMasterModelCopyWith<$Res> {
  __$$_KasMasterModelCopyWithImpl(
      _$_KasMasterModel _value, $Res Function(_$_KasMasterModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_KasMasterModel(
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
class _$_KasMasterModel implements _KasMasterModel {
  const _$_KasMasterModel({this.code, this.message});

  factory _$_KasMasterModel.fromJson(Map<String, dynamic> json) =>
      _$$_KasMasterModelFromJson(json);

  @override
  final int? code;
  @override
  final String? message;

  @override
  String toString() {
    return 'KasMasterModel(code: $code, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_KasMasterModel &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KasMasterModelCopyWith<_$_KasMasterModel> get copyWith =>
      __$$_KasMasterModelCopyWithImpl<_$_KasMasterModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KasMasterModelToJson(
      this,
    );
  }
}

abstract class _KasMasterModel implements KasMasterModel {
  const factory _KasMasterModel({final int? code, final String? message}) =
      _$_KasMasterModel;

  factory _KasMasterModel.fromJson(Map<String, dynamic> json) =
      _$_KasMasterModel.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_KasMasterModelCopyWith<_$_KasMasterModel> get copyWith =>
      throw _privateConstructorUsedError;
}
