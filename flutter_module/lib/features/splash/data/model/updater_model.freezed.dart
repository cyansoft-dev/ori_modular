// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'updater_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdaterModel _$UpdaterModelFromJson(Map<String, dynamic> json) {
  return _UpdaterModel.fromJson(json);
}

/// @nodoc
mixin _$UpdaterModel {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'version')
  UpdaterDataModel? get updater => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdaterModelCopyWith<UpdaterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdaterModelCopyWith<$Res> {
  factory $UpdaterModelCopyWith(
          UpdaterModel value, $Res Function(UpdaterModel) then) =
      _$UpdaterModelCopyWithImpl<$Res, UpdaterModel>;
  @useResult
  $Res call(
      {int? code,
      String? message,
      @JsonKey(name: 'version') UpdaterDataModel? updater});

  $UpdaterDataModelCopyWith<$Res>? get updater;
}

/// @nodoc
class _$UpdaterModelCopyWithImpl<$Res, $Val extends UpdaterModel>
    implements $UpdaterModelCopyWith<$Res> {
  _$UpdaterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? updater = freezed,
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
      updater: freezed == updater
          ? _value.updater
          : updater // ignore: cast_nullable_to_non_nullable
              as UpdaterDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UpdaterDataModelCopyWith<$Res>? get updater {
    if (_value.updater == null) {
      return null;
    }

    return $UpdaterDataModelCopyWith<$Res>(_value.updater!, (value) {
      return _then(_value.copyWith(updater: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UpdaterModelCopyWith<$Res>
    implements $UpdaterModelCopyWith<$Res> {
  factory _$$_UpdaterModelCopyWith(
          _$_UpdaterModel value, $Res Function(_$_UpdaterModel) then) =
      __$$_UpdaterModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? code,
      String? message,
      @JsonKey(name: 'version') UpdaterDataModel? updater});

  @override
  $UpdaterDataModelCopyWith<$Res>? get updater;
}

/// @nodoc
class __$$_UpdaterModelCopyWithImpl<$Res>
    extends _$UpdaterModelCopyWithImpl<$Res, _$_UpdaterModel>
    implements _$$_UpdaterModelCopyWith<$Res> {
  __$$_UpdaterModelCopyWithImpl(
      _$_UpdaterModel _value, $Res Function(_$_UpdaterModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? updater = freezed,
  }) {
    return _then(_$_UpdaterModel(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      updater: freezed == updater
          ? _value.updater
          : updater // ignore: cast_nullable_to_non_nullable
              as UpdaterDataModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_UpdaterModel implements _UpdaterModel {
  const _$_UpdaterModel(
      {this.code, this.message, @JsonKey(name: 'version') this.updater});

  factory _$_UpdaterModel.fromJson(Map<String, dynamic> json) =>
      _$$_UpdaterModelFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  @JsonKey(name: 'version')
  final UpdaterDataModel? updater;

  @override
  String toString() {
    return 'UpdaterModel(code: $code, message: $message, updater: $updater)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdaterModel &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.updater, updater) || other.updater == updater));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, updater);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdaterModelCopyWith<_$_UpdaterModel> get copyWith =>
      __$$_UpdaterModelCopyWithImpl<_$_UpdaterModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdaterModelToJson(
      this,
    );
  }
}

abstract class _UpdaterModel implements UpdaterModel {
  const factory _UpdaterModel(
          {final int? code,
          final String? message,
          @JsonKey(name: 'version') final UpdaterDataModel? updater}) =
      _$_UpdaterModel;

  factory _UpdaterModel.fromJson(Map<String, dynamic> json) =
      _$_UpdaterModel.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  @JsonKey(name: 'version')
  UpdaterDataModel? get updater;
  @override
  @JsonKey(ignore: true)
  _$$_UpdaterModelCopyWith<_$_UpdaterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdaterDataModel _$UpdaterDataModelFromJson(Map<String, dynamic> json) {
  return _UpdaterDataModel.fromJson(json);
}

/// @nodoc
mixin _$UpdaterDataModel {
  String? get name => throw _privateConstructorUsedError;
  String? get number => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  List<String>? get changelog => throw _privateConstructorUsedError;
  String? get signature => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdaterDataModelCopyWith<UpdaterDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdaterDataModelCopyWith<$Res> {
  factory $UpdaterDataModelCopyWith(
          UpdaterDataModel value, $Res Function(UpdaterDataModel) then) =
      _$UpdaterDataModelCopyWithImpl<$Res, UpdaterDataModel>;
  @useResult
  $Res call(
      {String? name,
      String? number,
      String? url,
      List<String>? changelog,
      String? signature});
}

/// @nodoc
class _$UpdaterDataModelCopyWithImpl<$Res, $Val extends UpdaterDataModel>
    implements $UpdaterDataModelCopyWith<$Res> {
  _$UpdaterDataModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_UpdaterDataModelCopyWith<$Res>
    implements $UpdaterDataModelCopyWith<$Res> {
  factory _$$_UpdaterDataModelCopyWith(
          _$_UpdaterDataModel value, $Res Function(_$_UpdaterDataModel) then) =
      __$$_UpdaterDataModelCopyWithImpl<$Res>;
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
class __$$_UpdaterDataModelCopyWithImpl<$Res>
    extends _$UpdaterDataModelCopyWithImpl<$Res, _$_UpdaterDataModel>
    implements _$$_UpdaterDataModelCopyWith<$Res> {
  __$$_UpdaterDataModelCopyWithImpl(
      _$_UpdaterDataModel _value, $Res Function(_$_UpdaterDataModel) _then)
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
    return _then(_$_UpdaterDataModel(
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

@JsonSerializable(explicitToJson: true)
class _$_UpdaterDataModel implements _UpdaterDataModel {
  const _$_UpdaterDataModel(
      {this.name,
      this.number,
      this.url,
      final List<String>? changelog,
      this.signature})
      : _changelog = changelog;

  factory _$_UpdaterDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_UpdaterDataModelFromJson(json);

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
    return 'UpdaterDataModel(name: $name, number: $number, url: $url, changelog: $changelog, signature: $signature)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdaterDataModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.url, url) || other.url == url) &&
            const DeepCollectionEquality()
                .equals(other._changelog, _changelog) &&
            (identical(other.signature, signature) ||
                other.signature == signature));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, number, url,
      const DeepCollectionEquality().hash(_changelog), signature);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdaterDataModelCopyWith<_$_UpdaterDataModel> get copyWith =>
      __$$_UpdaterDataModelCopyWithImpl<_$_UpdaterDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdaterDataModelToJson(
      this,
    );
  }
}

abstract class _UpdaterDataModel implements UpdaterDataModel {
  const factory _UpdaterDataModel(
      {final String? name,
      final String? number,
      final String? url,
      final List<String>? changelog,
      final String? signature}) = _$_UpdaterDataModel;

  factory _UpdaterDataModel.fromJson(Map<String, dynamic> json) =
      _$_UpdaterDataModel.fromJson;

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
  _$$_UpdaterDataModelCopyWith<_$_UpdaterDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
