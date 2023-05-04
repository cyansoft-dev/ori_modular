// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'setting_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SettingModel _$SettingModelFromJson(Map<String, dynamic> json) {
  return _SettingModel.fromJson(json);
}

/// @nodoc
mixin _$SettingModel {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  SettingDataModel? get setting => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SettingModelCopyWith<SettingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingModelCopyWith<$Res> {
  factory $SettingModelCopyWith(
          SettingModel value, $Res Function(SettingModel) then) =
      _$SettingModelCopyWithImpl<$Res, SettingModel>;
  @useResult
  $Res call({int? code, String? message, SettingDataModel? setting});

  $SettingDataModelCopyWith<$Res>? get setting;
}

/// @nodoc
class _$SettingModelCopyWithImpl<$Res, $Val extends SettingModel>
    implements $SettingModelCopyWith<$Res> {
  _$SettingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? setting = freezed,
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
      setting: freezed == setting
          ? _value.setting
          : setting // ignore: cast_nullable_to_non_nullable
              as SettingDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SettingDataModelCopyWith<$Res>? get setting {
    if (_value.setting == null) {
      return null;
    }

    return $SettingDataModelCopyWith<$Res>(_value.setting!, (value) {
      return _then(_value.copyWith(setting: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SettingModelCopyWith<$Res>
    implements $SettingModelCopyWith<$Res> {
  factory _$$_SettingModelCopyWith(
          _$_SettingModel value, $Res Function(_$_SettingModel) then) =
      __$$_SettingModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, SettingDataModel? setting});

  @override
  $SettingDataModelCopyWith<$Res>? get setting;
}

/// @nodoc
class __$$_SettingModelCopyWithImpl<$Res>
    extends _$SettingModelCopyWithImpl<$Res, _$_SettingModel>
    implements _$$_SettingModelCopyWith<$Res> {
  __$$_SettingModelCopyWithImpl(
      _$_SettingModel _value, $Res Function(_$_SettingModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? setting = freezed,
  }) {
    return _then(_$_SettingModel(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      setting: freezed == setting
          ? _value.setting
          : setting // ignore: cast_nullable_to_non_nullable
              as SettingDataModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SettingModel implements _SettingModel {
  const _$_SettingModel({this.code, this.message, this.setting});

  factory _$_SettingModel.fromJson(Map<String, dynamic> json) =>
      _$$_SettingModelFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final SettingDataModel? setting;

  @override
  String toString() {
    return 'SettingModel(code: $code, message: $message, setting: $setting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SettingModel &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.setting, setting) || other.setting == setting));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, setting);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SettingModelCopyWith<_$_SettingModel> get copyWith =>
      __$$_SettingModelCopyWithImpl<_$_SettingModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SettingModelToJson(
      this,
    );
  }
}

abstract class _SettingModel implements SettingModel {
  const factory _SettingModel(
      {final int? code,
      final String? message,
      final SettingDataModel? setting}) = _$_SettingModel;

  factory _SettingModel.fromJson(Map<String, dynamic> json) =
      _$_SettingModel.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  SettingDataModel? get setting;
  @override
  @JsonKey(ignore: true)
  _$$_SettingModelCopyWith<_$_SettingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

SettingDataModel _$SettingDataModelFromJson(Map<String, dynamic> json) {
  return _SettingDataModel.fromJson(json);
}

/// @nodoc
mixin _$SettingDataModel {
  @JsonKey(name: 'distance_meter')
  String? get distanceMeter => throw _privateConstructorUsedError;
  @JsonKey(name: 'block_mock_location')
  String? get blockMockLocation => throw _privateConstructorUsedError;
  @JsonKey(name: 'quality_image')
  int? get imageQuality => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SettingDataModelCopyWith<SettingDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingDataModelCopyWith<$Res> {
  factory $SettingDataModelCopyWith(
          SettingDataModel value, $Res Function(SettingDataModel) then) =
      _$SettingDataModelCopyWithImpl<$Res, SettingDataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'distance_meter') String? distanceMeter,
      @JsonKey(name: 'block_mock_location') String? blockMockLocation,
      @JsonKey(name: 'quality_image') int? imageQuality});
}

/// @nodoc
class _$SettingDataModelCopyWithImpl<$Res, $Val extends SettingDataModel>
    implements $SettingDataModelCopyWith<$Res> {
  _$SettingDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distanceMeter = freezed,
    Object? blockMockLocation = freezed,
    Object? imageQuality = freezed,
  }) {
    return _then(_value.copyWith(
      distanceMeter: freezed == distanceMeter
          ? _value.distanceMeter
          : distanceMeter // ignore: cast_nullable_to_non_nullable
              as String?,
      blockMockLocation: freezed == blockMockLocation
          ? _value.blockMockLocation
          : blockMockLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      imageQuality: freezed == imageQuality
          ? _value.imageQuality
          : imageQuality // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SettingDataModelCopyWith<$Res>
    implements $SettingDataModelCopyWith<$Res> {
  factory _$$_SettingDataModelCopyWith(
          _$_SettingDataModel value, $Res Function(_$_SettingDataModel) then) =
      __$$_SettingDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'distance_meter') String? distanceMeter,
      @JsonKey(name: 'block_mock_location') String? blockMockLocation,
      @JsonKey(name: 'quality_image') int? imageQuality});
}

/// @nodoc
class __$$_SettingDataModelCopyWithImpl<$Res>
    extends _$SettingDataModelCopyWithImpl<$Res, _$_SettingDataModel>
    implements _$$_SettingDataModelCopyWith<$Res> {
  __$$_SettingDataModelCopyWithImpl(
      _$_SettingDataModel _value, $Res Function(_$_SettingDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distanceMeter = freezed,
    Object? blockMockLocation = freezed,
    Object? imageQuality = freezed,
  }) {
    return _then(_$_SettingDataModel(
      distanceMeter: freezed == distanceMeter
          ? _value.distanceMeter
          : distanceMeter // ignore: cast_nullable_to_non_nullable
              as String?,
      blockMockLocation: freezed == blockMockLocation
          ? _value.blockMockLocation
          : blockMockLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      imageQuality: freezed == imageQuality
          ? _value.imageQuality
          : imageQuality // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_SettingDataModel implements _SettingDataModel {
  const _$_SettingDataModel(
      {@JsonKey(name: 'distance_meter') this.distanceMeter,
      @JsonKey(name: 'block_mock_location') this.blockMockLocation,
      @JsonKey(name: 'quality_image') this.imageQuality});

  factory _$_SettingDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_SettingDataModelFromJson(json);

  @override
  @JsonKey(name: 'distance_meter')
  final String? distanceMeter;
  @override
  @JsonKey(name: 'block_mock_location')
  final String? blockMockLocation;
  @override
  @JsonKey(name: 'quality_image')
  final int? imageQuality;

  @override
  String toString() {
    return 'SettingDataModel(distanceMeter: $distanceMeter, blockMockLocation: $blockMockLocation, imageQuality: $imageQuality)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SettingDataModel &&
            (identical(other.distanceMeter, distanceMeter) ||
                other.distanceMeter == distanceMeter) &&
            (identical(other.blockMockLocation, blockMockLocation) ||
                other.blockMockLocation == blockMockLocation) &&
            (identical(other.imageQuality, imageQuality) ||
                other.imageQuality == imageQuality));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, distanceMeter, blockMockLocation, imageQuality);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SettingDataModelCopyWith<_$_SettingDataModel> get copyWith =>
      __$$_SettingDataModelCopyWithImpl<_$_SettingDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SettingDataModelToJson(
      this,
    );
  }
}

abstract class _SettingDataModel implements SettingDataModel {
  const factory _SettingDataModel(
          {@JsonKey(name: 'distance_meter') final String? distanceMeter,
          @JsonKey(name: 'block_mock_location') final String? blockMockLocation,
          @JsonKey(name: 'quality_image') final int? imageQuality}) =
      _$_SettingDataModel;

  factory _SettingDataModel.fromJson(Map<String, dynamic> json) =
      _$_SettingDataModel.fromJson;

  @override
  @JsonKey(name: 'distance_meter')
  String? get distanceMeter;
  @override
  @JsonKey(name: 'block_mock_location')
  String? get blockMockLocation;
  @override
  @JsonKey(name: 'quality_image')
  int? get imageQuality;
  @override
  @JsonKey(ignore: true)
  _$$_SettingDataModelCopyWith<_$_SettingDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
