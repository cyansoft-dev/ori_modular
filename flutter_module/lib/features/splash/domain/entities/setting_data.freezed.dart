// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'setting_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SettingData {
  String? get distanceMeter => throw _privateConstructorUsedError;
  bool? get blockMockLocation => throw _privateConstructorUsedError;
  int? get imageQuality => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingDataCopyWith<SettingData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingDataCopyWith<$Res> {
  factory $SettingDataCopyWith(
          SettingData value, $Res Function(SettingData) then) =
      _$SettingDataCopyWithImpl<$Res, SettingData>;
  @useResult
  $Res call(
      {String? distanceMeter, bool? blockMockLocation, int? imageQuality});
}

/// @nodoc
class _$SettingDataCopyWithImpl<$Res, $Val extends SettingData>
    implements $SettingDataCopyWith<$Res> {
  _$SettingDataCopyWithImpl(this._value, this._then);

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
              as bool?,
      imageQuality: freezed == imageQuality
          ? _value.imageQuality
          : imageQuality // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SettingDataCopyWith<$Res>
    implements $SettingDataCopyWith<$Res> {
  factory _$$_SettingDataCopyWith(
          _$_SettingData value, $Res Function(_$_SettingData) then) =
      __$$_SettingDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? distanceMeter, bool? blockMockLocation, int? imageQuality});
}

/// @nodoc
class __$$_SettingDataCopyWithImpl<$Res>
    extends _$SettingDataCopyWithImpl<$Res, _$_SettingData>
    implements _$$_SettingDataCopyWith<$Res> {
  __$$_SettingDataCopyWithImpl(
      _$_SettingData _value, $Res Function(_$_SettingData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distanceMeter = freezed,
    Object? blockMockLocation = freezed,
    Object? imageQuality = freezed,
  }) {
    return _then(_$_SettingData(
      distanceMeter: freezed == distanceMeter
          ? _value.distanceMeter
          : distanceMeter // ignore: cast_nullable_to_non_nullable
              as String?,
      blockMockLocation: freezed == blockMockLocation
          ? _value.blockMockLocation
          : blockMockLocation // ignore: cast_nullable_to_non_nullable
              as bool?,
      imageQuality: freezed == imageQuality
          ? _value.imageQuality
          : imageQuality // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_SettingData extends _SettingData {
  const _$_SettingData(
      {this.distanceMeter, this.blockMockLocation, this.imageQuality})
      : super._();

  @override
  final String? distanceMeter;
  @override
  final bool? blockMockLocation;
  @override
  final int? imageQuality;

  @override
  String toString() {
    return 'SettingData(distanceMeter: $distanceMeter, blockMockLocation: $blockMockLocation, imageQuality: $imageQuality)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SettingData &&
            (identical(other.distanceMeter, distanceMeter) ||
                other.distanceMeter == distanceMeter) &&
            (identical(other.blockMockLocation, blockMockLocation) ||
                other.blockMockLocation == blockMockLocation) &&
            (identical(other.imageQuality, imageQuality) ||
                other.imageQuality == imageQuality));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, distanceMeter, blockMockLocation, imageQuality);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SettingDataCopyWith<_$_SettingData> get copyWith =>
      __$$_SettingDataCopyWithImpl<_$_SettingData>(this, _$identity);
}

abstract class _SettingData extends SettingData {
  const factory _SettingData(
      {final String? distanceMeter,
      final bool? blockMockLocation,
      final int? imageQuality}) = _$_SettingData;
  const _SettingData._() : super._();

  @override
  String? get distanceMeter;
  @override
  bool? get blockMockLocation;
  @override
  int? get imageQuality;
  @override
  @JsonKey(ignore: true)
  _$$_SettingDataCopyWith<_$_SettingData> get copyWith =>
      throw _privateConstructorUsedError;
}
