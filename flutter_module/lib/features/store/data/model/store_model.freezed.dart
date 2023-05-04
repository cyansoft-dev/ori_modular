// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StoreModel _$StoreModelFromJson(Map<String, dynamic> json) {
  return _StoreModel.fromJson(json);
}

/// @nodoc
mixin _$StoreModel {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'result')
  List<StoreDataModel>? get listStoreModel =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreModelCopyWith<StoreModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreModelCopyWith<$Res> {
  factory $StoreModelCopyWith(
          StoreModel value, $Res Function(StoreModel) then) =
      _$StoreModelCopyWithImpl<$Res, StoreModel>;
  @useResult
  $Res call(
      {int? code,
      String? message,
      @JsonKey(name: 'result') List<StoreDataModel>? listStoreModel});
}

/// @nodoc
class _$StoreModelCopyWithImpl<$Res, $Val extends StoreModel>
    implements $StoreModelCopyWith<$Res> {
  _$StoreModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? listStoreModel = freezed,
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
      listStoreModel: freezed == listStoreModel
          ? _value.listStoreModel
          : listStoreModel // ignore: cast_nullable_to_non_nullable
              as List<StoreDataModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StoreModelCopyWith<$Res>
    implements $StoreModelCopyWith<$Res> {
  factory _$$_StoreModelCopyWith(
          _$_StoreModel value, $Res Function(_$_StoreModel) then) =
      __$$_StoreModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? code,
      String? message,
      @JsonKey(name: 'result') List<StoreDataModel>? listStoreModel});
}

/// @nodoc
class __$$_StoreModelCopyWithImpl<$Res>
    extends _$StoreModelCopyWithImpl<$Res, _$_StoreModel>
    implements _$$_StoreModelCopyWith<$Res> {
  __$$_StoreModelCopyWithImpl(
      _$_StoreModel _value, $Res Function(_$_StoreModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? listStoreModel = freezed,
  }) {
    return _then(_$_StoreModel(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      listStoreModel: freezed == listStoreModel
          ? _value._listStoreModel
          : listStoreModel // ignore: cast_nullable_to_non_nullable
              as List<StoreDataModel>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_StoreModel implements _StoreModel {
  const _$_StoreModel(
      {this.code,
      this.message,
      @JsonKey(name: 'result') final List<StoreDataModel>? listStoreModel})
      : _listStoreModel = listStoreModel;

  factory _$_StoreModel.fromJson(Map<String, dynamic> json) =>
      _$$_StoreModelFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  final List<StoreDataModel>? _listStoreModel;
  @override
  @JsonKey(name: 'result')
  List<StoreDataModel>? get listStoreModel {
    final value = _listStoreModel;
    if (value == null) return null;
    if (_listStoreModel is EqualUnmodifiableListView) return _listStoreModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'StoreModel(code: $code, message: $message, listStoreModel: $listStoreModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StoreModel &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._listStoreModel, _listStoreModel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, message,
      const DeepCollectionEquality().hash(_listStoreModel));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StoreModelCopyWith<_$_StoreModel> get copyWith =>
      __$$_StoreModelCopyWithImpl<_$_StoreModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StoreModelToJson(
      this,
    );
  }
}

abstract class _StoreModel implements StoreModel {
  const factory _StoreModel(
      {final int? code,
      final String? message,
      @JsonKey(name: 'result')
          final List<StoreDataModel>? listStoreModel}) = _$_StoreModel;

  factory _StoreModel.fromJson(Map<String, dynamic> json) =
      _$_StoreModel.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  @JsonKey(name: 'result')
  List<StoreDataModel>? get listStoreModel;
  @override
  @JsonKey(ignore: true)
  _$$_StoreModelCopyWith<_$_StoreModel> get copyWith =>
      throw _privateConstructorUsedError;
}

StoreDataModel _$StoreDataModelFromJson(Map<String, dynamic> json) {
  return _StoreDataModel.fromJson(json);
}

/// @nodoc
mixin _$StoreDataModel {
  String? get username => throw _privateConstructorUsedError;
  String? get namalengkap => throw _privateConstructorUsedError;
  String? get kodetoko => throw _privateConstructorUsedError;
  String? get namatoko => throw _privateConstructorUsedError;
  String? get groupname => throw _privateConstructorUsedError;
  String? get kodecabang => throw _privateConstructorUsedError;
  String? get namacabang => throw _privateConstructorUsedError;
  @JsonKey(name: 'long_decimal')
  String? get longDecimal => throw _privateConstructorUsedError;
  @JsonKey(name: 'lat_decimal')
  String? get latDecimal => throw _privateConstructorUsedError;
  @JsonKey(name: 'long_radians')
  String? get longRadians => throw _privateConstructorUsedError;
  @JsonKey(name: 'lat_radians')
  String? get latRadians => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreDataModelCopyWith<StoreDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreDataModelCopyWith<$Res> {
  factory $StoreDataModelCopyWith(
          StoreDataModel value, $Res Function(StoreDataModel) then) =
      _$StoreDataModelCopyWithImpl<$Res, StoreDataModel>;
  @useResult
  $Res call(
      {String? username,
      String? namalengkap,
      String? kodetoko,
      String? namatoko,
      String? groupname,
      String? kodecabang,
      String? namacabang,
      @JsonKey(name: 'long_decimal') String? longDecimal,
      @JsonKey(name: 'lat_decimal') String? latDecimal,
      @JsonKey(name: 'long_radians') String? longRadians,
      @JsonKey(name: 'lat_radians') String? latRadians});
}

/// @nodoc
class _$StoreDataModelCopyWithImpl<$Res, $Val extends StoreDataModel>
    implements $StoreDataModelCopyWith<$Res> {
  _$StoreDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? namalengkap = freezed,
    Object? kodetoko = freezed,
    Object? namatoko = freezed,
    Object? groupname = freezed,
    Object? kodecabang = freezed,
    Object? namacabang = freezed,
    Object? longDecimal = freezed,
    Object? latDecimal = freezed,
    Object? longRadians = freezed,
    Object? latRadians = freezed,
  }) {
    return _then(_value.copyWith(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      namalengkap: freezed == namalengkap
          ? _value.namalengkap
          : namalengkap // ignore: cast_nullable_to_non_nullable
              as String?,
      kodetoko: freezed == kodetoko
          ? _value.kodetoko
          : kodetoko // ignore: cast_nullable_to_non_nullable
              as String?,
      namatoko: freezed == namatoko
          ? _value.namatoko
          : namatoko // ignore: cast_nullable_to_non_nullable
              as String?,
      groupname: freezed == groupname
          ? _value.groupname
          : groupname // ignore: cast_nullable_to_non_nullable
              as String?,
      kodecabang: freezed == kodecabang
          ? _value.kodecabang
          : kodecabang // ignore: cast_nullable_to_non_nullable
              as String?,
      namacabang: freezed == namacabang
          ? _value.namacabang
          : namacabang // ignore: cast_nullable_to_non_nullable
              as String?,
      longDecimal: freezed == longDecimal
          ? _value.longDecimal
          : longDecimal // ignore: cast_nullable_to_non_nullable
              as String?,
      latDecimal: freezed == latDecimal
          ? _value.latDecimal
          : latDecimal // ignore: cast_nullable_to_non_nullable
              as String?,
      longRadians: freezed == longRadians
          ? _value.longRadians
          : longRadians // ignore: cast_nullable_to_non_nullable
              as String?,
      latRadians: freezed == latRadians
          ? _value.latRadians
          : latRadians // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StoreDataModelCopyWith<$Res>
    implements $StoreDataModelCopyWith<$Res> {
  factory _$$_StoreDataModelCopyWith(
          _$_StoreDataModel value, $Res Function(_$_StoreDataModel) then) =
      __$$_StoreDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? username,
      String? namalengkap,
      String? kodetoko,
      String? namatoko,
      String? groupname,
      String? kodecabang,
      String? namacabang,
      @JsonKey(name: 'long_decimal') String? longDecimal,
      @JsonKey(name: 'lat_decimal') String? latDecimal,
      @JsonKey(name: 'long_radians') String? longRadians,
      @JsonKey(name: 'lat_radians') String? latRadians});
}

/// @nodoc
class __$$_StoreDataModelCopyWithImpl<$Res>
    extends _$StoreDataModelCopyWithImpl<$Res, _$_StoreDataModel>
    implements _$$_StoreDataModelCopyWith<$Res> {
  __$$_StoreDataModelCopyWithImpl(
      _$_StoreDataModel _value, $Res Function(_$_StoreDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? namalengkap = freezed,
    Object? kodetoko = freezed,
    Object? namatoko = freezed,
    Object? groupname = freezed,
    Object? kodecabang = freezed,
    Object? namacabang = freezed,
    Object? longDecimal = freezed,
    Object? latDecimal = freezed,
    Object? longRadians = freezed,
    Object? latRadians = freezed,
  }) {
    return _then(_$_StoreDataModel(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      namalengkap: freezed == namalengkap
          ? _value.namalengkap
          : namalengkap // ignore: cast_nullable_to_non_nullable
              as String?,
      kodetoko: freezed == kodetoko
          ? _value.kodetoko
          : kodetoko // ignore: cast_nullable_to_non_nullable
              as String?,
      namatoko: freezed == namatoko
          ? _value.namatoko
          : namatoko // ignore: cast_nullable_to_non_nullable
              as String?,
      groupname: freezed == groupname
          ? _value.groupname
          : groupname // ignore: cast_nullable_to_non_nullable
              as String?,
      kodecabang: freezed == kodecabang
          ? _value.kodecabang
          : kodecabang // ignore: cast_nullable_to_non_nullable
              as String?,
      namacabang: freezed == namacabang
          ? _value.namacabang
          : namacabang // ignore: cast_nullable_to_non_nullable
              as String?,
      longDecimal: freezed == longDecimal
          ? _value.longDecimal
          : longDecimal // ignore: cast_nullable_to_non_nullable
              as String?,
      latDecimal: freezed == latDecimal
          ? _value.latDecimal
          : latDecimal // ignore: cast_nullable_to_non_nullable
              as String?,
      longRadians: freezed == longRadians
          ? _value.longRadians
          : longRadians // ignore: cast_nullable_to_non_nullable
              as String?,
      latRadians: freezed == latRadians
          ? _value.latRadians
          : latRadians // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_StoreDataModel implements _StoreDataModel {
  const _$_StoreDataModel(
      {this.username,
      this.namalengkap,
      this.kodetoko,
      this.namatoko,
      this.groupname,
      this.kodecabang,
      this.namacabang,
      @JsonKey(name: 'long_decimal') this.longDecimal,
      @JsonKey(name: 'lat_decimal') this.latDecimal,
      @JsonKey(name: 'long_radians') this.longRadians,
      @JsonKey(name: 'lat_radians') this.latRadians});

  factory _$_StoreDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_StoreDataModelFromJson(json);

  @override
  final String? username;
  @override
  final String? namalengkap;
  @override
  final String? kodetoko;
  @override
  final String? namatoko;
  @override
  final String? groupname;
  @override
  final String? kodecabang;
  @override
  final String? namacabang;
  @override
  @JsonKey(name: 'long_decimal')
  final String? longDecimal;
  @override
  @JsonKey(name: 'lat_decimal')
  final String? latDecimal;
  @override
  @JsonKey(name: 'long_radians')
  final String? longRadians;
  @override
  @JsonKey(name: 'lat_radians')
  final String? latRadians;

  @override
  String toString() {
    return 'StoreDataModel(username: $username, namalengkap: $namalengkap, kodetoko: $kodetoko, namatoko: $namatoko, groupname: $groupname, kodecabang: $kodecabang, namacabang: $namacabang, longDecimal: $longDecimal, latDecimal: $latDecimal, longRadians: $longRadians, latRadians: $latRadians)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StoreDataModel &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.namalengkap, namalengkap) ||
                other.namalengkap == namalengkap) &&
            (identical(other.kodetoko, kodetoko) ||
                other.kodetoko == kodetoko) &&
            (identical(other.namatoko, namatoko) ||
                other.namatoko == namatoko) &&
            (identical(other.groupname, groupname) ||
                other.groupname == groupname) &&
            (identical(other.kodecabang, kodecabang) ||
                other.kodecabang == kodecabang) &&
            (identical(other.namacabang, namacabang) ||
                other.namacabang == namacabang) &&
            (identical(other.longDecimal, longDecimal) ||
                other.longDecimal == longDecimal) &&
            (identical(other.latDecimal, latDecimal) ||
                other.latDecimal == latDecimal) &&
            (identical(other.longRadians, longRadians) ||
                other.longRadians == longRadians) &&
            (identical(other.latRadians, latRadians) ||
                other.latRadians == latRadians));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      username,
      namalengkap,
      kodetoko,
      namatoko,
      groupname,
      kodecabang,
      namacabang,
      longDecimal,
      latDecimal,
      longRadians,
      latRadians);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StoreDataModelCopyWith<_$_StoreDataModel> get copyWith =>
      __$$_StoreDataModelCopyWithImpl<_$_StoreDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StoreDataModelToJson(
      this,
    );
  }
}

abstract class _StoreDataModel implements StoreDataModel {
  const factory _StoreDataModel(
          {final String? username,
          final String? namalengkap,
          final String? kodetoko,
          final String? namatoko,
          final String? groupname,
          final String? kodecabang,
          final String? namacabang,
          @JsonKey(name: 'long_decimal') final String? longDecimal,
          @JsonKey(name: 'lat_decimal') final String? latDecimal,
          @JsonKey(name: 'long_radians') final String? longRadians,
          @JsonKey(name: 'lat_radians') final String? latRadians}) =
      _$_StoreDataModel;

  factory _StoreDataModel.fromJson(Map<String, dynamic> json) =
      _$_StoreDataModel.fromJson;

  @override
  String? get username;
  @override
  String? get namalengkap;
  @override
  String? get kodetoko;
  @override
  String? get namatoko;
  @override
  String? get groupname;
  @override
  String? get kodecabang;
  @override
  String? get namacabang;
  @override
  @JsonKey(name: 'long_decimal')
  String? get longDecimal;
  @override
  @JsonKey(name: 'lat_decimal')
  String? get latDecimal;
  @override
  @JsonKey(name: 'long_radians')
  String? get longRadians;
  @override
  @JsonKey(name: 'lat_radians')
  String? get latRadians;
  @override
  @JsonKey(ignore: true)
  _$$_StoreDataModelCopyWith<_$_StoreDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
