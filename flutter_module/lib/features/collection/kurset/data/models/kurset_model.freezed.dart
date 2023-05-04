// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kurset_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

KursetModel _$KursetModelFromJson(Map<String, dynamic> json) {
  return _KursetModel.fromJson(json);
}

/// @nodoc
mixin _$KursetModel {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<DataKursetModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KursetModelCopyWith<KursetModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KursetModelCopyWith<$Res> {
  factory $KursetModelCopyWith(
          KursetModel value, $Res Function(KursetModel) then) =
      _$KursetModelCopyWithImpl<$Res, KursetModel>;
  @useResult
  $Res call({int? code, String? message, List<DataKursetModel>? data});
}

/// @nodoc
class _$KursetModelCopyWithImpl<$Res, $Val extends KursetModel>
    implements $KursetModelCopyWith<$Res> {
  _$KursetModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
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
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataKursetModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_KursetModelCopyWith<$Res>
    implements $KursetModelCopyWith<$Res> {
  factory _$$_KursetModelCopyWith(
          _$_KursetModel value, $Res Function(_$_KursetModel) then) =
      __$$_KursetModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, List<DataKursetModel>? data});
}

/// @nodoc
class __$$_KursetModelCopyWithImpl<$Res>
    extends _$KursetModelCopyWithImpl<$Res, _$_KursetModel>
    implements _$$_KursetModelCopyWith<$Res> {
  __$$_KursetModelCopyWithImpl(
      _$_KursetModel _value, $Res Function(_$_KursetModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_KursetModel(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataKursetModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_KursetModel implements _KursetModel {
  const _$_KursetModel(
      {this.code, this.message, final List<DataKursetModel>? data})
      : _data = data;

  factory _$_KursetModel.fromJson(Map<String, dynamic> json) =>
      _$$_KursetModelFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  final List<DataKursetModel>? _data;
  @override
  List<DataKursetModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'KursetModel(code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_KursetModel &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, code, message, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KursetModelCopyWith<_$_KursetModel> get copyWith =>
      __$$_KursetModelCopyWithImpl<_$_KursetModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KursetModelToJson(
      this,
    );
  }
}

abstract class _KursetModel implements KursetModel {
  const factory _KursetModel(
      {final int? code,
      final String? message,
      final List<DataKursetModel>? data}) = _$_KursetModel;

  factory _KursetModel.fromJson(Map<String, dynamic> json) =
      _$_KursetModel.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  List<DataKursetModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_KursetModelCopyWith<_$_KursetModel> get copyWith =>
      throw _privateConstructorUsedError;
}

DataKursetModel _$DataKursetModelFromJson(Map<String, dynamic> json) {
  return _DataKursetModel.fromJson(json);
}

/// @nodoc
mixin _$DataKursetModel {
  int? get id => throw _privateConstructorUsedError;
  String? get kdtk => throw _privateConstructorUsedError;
  DateTime? get tanggal => throw _privateConstructorUsedError;
  double? get nominal => throw _privateConstructorUsedError;
  String? get keterangan => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataKursetModelCopyWith<DataKursetModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataKursetModelCopyWith<$Res> {
  factory $DataKursetModelCopyWith(
          DataKursetModel value, $Res Function(DataKursetModel) then) =
      _$DataKursetModelCopyWithImpl<$Res, DataKursetModel>;
  @useResult
  $Res call(
      {int? id,
      String? kdtk,
      DateTime? tanggal,
      double? nominal,
      String? keterangan});
}

/// @nodoc
class _$DataKursetModelCopyWithImpl<$Res, $Val extends DataKursetModel>
    implements $DataKursetModelCopyWith<$Res> {
  _$DataKursetModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? kdtk = freezed,
    Object? tanggal = freezed,
    Object? nominal = freezed,
    Object? keterangan = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      kdtk: freezed == kdtk
          ? _value.kdtk
          : kdtk // ignore: cast_nullable_to_non_nullable
              as String?,
      tanggal: freezed == tanggal
          ? _value.tanggal
          : tanggal // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      nominal: freezed == nominal
          ? _value.nominal
          : nominal // ignore: cast_nullable_to_non_nullable
              as double?,
      keterangan: freezed == keterangan
          ? _value.keterangan
          : keterangan // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataKursetModelCopyWith<$Res>
    implements $DataKursetModelCopyWith<$Res> {
  factory _$$_DataKursetModelCopyWith(
          _$_DataKursetModel value, $Res Function(_$_DataKursetModel) then) =
      __$$_DataKursetModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? kdtk,
      DateTime? tanggal,
      double? nominal,
      String? keterangan});
}

/// @nodoc
class __$$_DataKursetModelCopyWithImpl<$Res>
    extends _$DataKursetModelCopyWithImpl<$Res, _$_DataKursetModel>
    implements _$$_DataKursetModelCopyWith<$Res> {
  __$$_DataKursetModelCopyWithImpl(
      _$_DataKursetModel _value, $Res Function(_$_DataKursetModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? kdtk = freezed,
    Object? tanggal = freezed,
    Object? nominal = freezed,
    Object? keterangan = freezed,
  }) {
    return _then(_$_DataKursetModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      kdtk: freezed == kdtk
          ? _value.kdtk
          : kdtk // ignore: cast_nullable_to_non_nullable
              as String?,
      tanggal: freezed == tanggal
          ? _value.tanggal
          : tanggal // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      nominal: freezed == nominal
          ? _value.nominal
          : nominal // ignore: cast_nullable_to_non_nullable
              as double?,
      keterangan: freezed == keterangan
          ? _value.keterangan
          : keterangan // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataKursetModel implements _DataKursetModel {
  const _$_DataKursetModel(
      {this.id, this.kdtk, this.tanggal, this.nominal, this.keterangan});

  factory _$_DataKursetModel.fromJson(Map<String, dynamic> json) =>
      _$$_DataKursetModelFromJson(json);

  @override
  final int? id;
  @override
  final String? kdtk;
  @override
  final DateTime? tanggal;
  @override
  final double? nominal;
  @override
  final String? keterangan;

  @override
  String toString() {
    return 'DataKursetModel(id: $id, kdtk: $kdtk, tanggal: $tanggal, nominal: $nominal, keterangan: $keterangan)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataKursetModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.kdtk, kdtk) || other.kdtk == kdtk) &&
            (identical(other.tanggal, tanggal) || other.tanggal == tanggal) &&
            (identical(other.nominal, nominal) || other.nominal == nominal) &&
            (identical(other.keterangan, keterangan) ||
                other.keterangan == keterangan));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, kdtk, tanggal, nominal, keterangan);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataKursetModelCopyWith<_$_DataKursetModel> get copyWith =>
      __$$_DataKursetModelCopyWithImpl<_$_DataKursetModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataKursetModelToJson(
      this,
    );
  }
}

abstract class _DataKursetModel implements DataKursetModel {
  const factory _DataKursetModel(
      {final int? id,
      final String? kdtk,
      final DateTime? tanggal,
      final double? nominal,
      final String? keterangan}) = _$_DataKursetModel;

  factory _DataKursetModel.fromJson(Map<String, dynamic> json) =
      _$_DataKursetModel.fromJson;

  @override
  int? get id;
  @override
  String? get kdtk;
  @override
  DateTime? get tanggal;
  @override
  double? get nominal;
  @override
  String? get keterangan;
  @override
  @JsonKey(ignore: true)
  _$$_DataKursetModelCopyWith<_$_DataKursetModel> get copyWith =>
      throw _privateConstructorUsedError;
}
