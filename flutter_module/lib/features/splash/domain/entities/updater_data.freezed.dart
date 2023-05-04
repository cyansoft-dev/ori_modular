// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'updater_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UpdaterData {
  String? get name => throw _privateConstructorUsedError;
  String? get number => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  List<String>? get changelog => throw _privateConstructorUsedError;
  String? get signature => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdaterDataCopyWith<UpdaterData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdaterDataCopyWith<$Res> {
  factory $UpdaterDataCopyWith(
          UpdaterData value, $Res Function(UpdaterData) then) =
      _$UpdaterDataCopyWithImpl<$Res, UpdaterData>;
  @useResult
  $Res call(
      {String? name,
      String? number,
      String? url,
      List<String>? changelog,
      String? signature});
}

/// @nodoc
class _$UpdaterDataCopyWithImpl<$Res, $Val extends UpdaterData>
    implements $UpdaterDataCopyWith<$Res> {
  _$UpdaterDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? number = freezed,
    Object? url = freezed,
    Object? changelog = freezed,
    Object? signature = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      changelog: freezed == changelog
          ? _value.changelog
          : changelog // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      signature: freezed == signature
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdaterDataCopyWith<$Res>
    implements $UpdaterDataCopyWith<$Res> {
  factory _$$_UpdaterDataCopyWith(
          _$_UpdaterData value, $Res Function(_$_UpdaterData) then) =
      __$$_UpdaterDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? number,
      String? url,
      List<String>? changelog,
      String? signature});
}

/// @nodoc
class __$$_UpdaterDataCopyWithImpl<$Res>
    extends _$UpdaterDataCopyWithImpl<$Res, _$_UpdaterData>
    implements _$$_UpdaterDataCopyWith<$Res> {
  __$$_UpdaterDataCopyWithImpl(
      _$_UpdaterData _value, $Res Function(_$_UpdaterData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? number = freezed,
    Object? url = freezed,
    Object? changelog = freezed,
    Object? signature = freezed,
  }) {
    return _then(_$_UpdaterData(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      changelog: freezed == changelog
          ? _value._changelog
          : changelog // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      signature: freezed == signature
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_UpdaterData extends _UpdaterData {
  const _$_UpdaterData(
      {this.name,
      this.number,
      this.url,
      final List<String>? changelog,
      this.signature})
      : _changelog = changelog,
        super._();

  @override
  final String? name;
  @override
  final String? number;
  @override
  final String? url;
  final List<String>? _changelog;
  @override
  List<String>? get changelog {
    final value = _changelog;
    if (value == null) return null;
    if (_changelog is EqualUnmodifiableListView) return _changelog;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? signature;

  @override
  String toString() {
    return 'UpdaterData(name: $name, number: $number, url: $url, changelog: $changelog, signature: $signature)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdaterData &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.url, url) || other.url == url) &&
            const DeepCollectionEquality()
                .equals(other._changelog, _changelog) &&
            (identical(other.signature, signature) ||
                other.signature == signature));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, number, url,
      const DeepCollectionEquality().hash(_changelog), signature);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdaterDataCopyWith<_$_UpdaterData> get copyWith =>
      __$$_UpdaterDataCopyWithImpl<_$_UpdaterData>(this, _$identity);
}

abstract class _UpdaterData extends UpdaterData {
  const factory _UpdaterData(
      {final String? name,
      final String? number,
      final String? url,
      final List<String>? changelog,
      final String? signature}) = _$_UpdaterData;
  const _UpdaterData._() : super._();

  @override
  String? get name;
  @override
  String? get number;
  @override
  String? get url;
  @override
  List<String>? get changelog;
  @override
  String? get signature;
  @override
  @JsonKey(ignore: true)
  _$$_UpdaterDataCopyWith<_$_UpdaterData> get copyWith =>
      throw _privateConstructorUsedError;
}
