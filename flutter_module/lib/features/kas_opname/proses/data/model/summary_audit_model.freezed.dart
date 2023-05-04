// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'summary_audit_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SummaryAuditModel _$SummaryAuditModelFromJson(Map<String, dynamic> json) {
  return _SummaryAuditModel.fromJson(json);
}

/// @nodoc
mixin _$SummaryAuditModel {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  DataSummaryAuditModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SummaryAuditModelCopyWith<SummaryAuditModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SummaryAuditModelCopyWith<$Res> {
  factory $SummaryAuditModelCopyWith(
          SummaryAuditModel value, $Res Function(SummaryAuditModel) then) =
      _$SummaryAuditModelCopyWithImpl<$Res, SummaryAuditModel>;
  @useResult
  $Res call({int? code, String? message, DataSummaryAuditModel? data});

  $DataSummaryAuditModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$SummaryAuditModelCopyWithImpl<$Res, $Val extends SummaryAuditModel>
    implements $SummaryAuditModelCopyWith<$Res> {
  _$SummaryAuditModelCopyWithImpl(this._value, this._then);

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
              as DataSummaryAuditModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataSummaryAuditModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataSummaryAuditModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SummaryAuditModelCopyWith<$Res>
    implements $SummaryAuditModelCopyWith<$Res> {
  factory _$$_SummaryAuditModelCopyWith(_$_SummaryAuditModel value,
          $Res Function(_$_SummaryAuditModel) then) =
      __$$_SummaryAuditModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, DataSummaryAuditModel? data});

  @override
  $DataSummaryAuditModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_SummaryAuditModelCopyWithImpl<$Res>
    extends _$SummaryAuditModelCopyWithImpl<$Res, _$_SummaryAuditModel>
    implements _$$_SummaryAuditModelCopyWith<$Res> {
  __$$_SummaryAuditModelCopyWithImpl(
      _$_SummaryAuditModel _value, $Res Function(_$_SummaryAuditModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_SummaryAuditModel(
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
              as DataSummaryAuditModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SummaryAuditModel implements _SummaryAuditModel {
  const _$_SummaryAuditModel({this.code, this.message, this.data});

  factory _$_SummaryAuditModel.fromJson(Map<String, dynamic> json) =>
      _$$_SummaryAuditModelFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final DataSummaryAuditModel? data;

  @override
  String toString() {
    return 'SummaryAuditModel(code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SummaryAuditModel &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SummaryAuditModelCopyWith<_$_SummaryAuditModel> get copyWith =>
      __$$_SummaryAuditModelCopyWithImpl<_$_SummaryAuditModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SummaryAuditModelToJson(
      this,
    );
  }
}

abstract class _SummaryAuditModel implements SummaryAuditModel {
  const factory _SummaryAuditModel(
      {final int? code,
      final String? message,
      final DataSummaryAuditModel? data}) = _$_SummaryAuditModel;

  factory _SummaryAuditModel.fromJson(Map<String, dynamic> json) =
      _$_SummaryAuditModel.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  DataSummaryAuditModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$_SummaryAuditModelCopyWith<_$_SummaryAuditModel> get copyWith =>
      throw _privateConstructorUsedError;
}

DataSummaryAuditModel _$DataSummaryAuditModelFromJson(
    Map<String, dynamic> json) {
  return _DataSummaryAuditModel.fromJson(json);
}

/// @nodoc
mixin _$DataSummaryAuditModel {
  int get id => throw _privateConstructorUsedError;
  String? get kdtk => throw _privateConstructorUsedError;
  DateTime? get tanggal => throw _privateConstructorUsedError;
  double get summary => throw _privateConstructorUsedError;
  List<AdjustmentAuditModel>? get adjust => throw _privateConstructorUsedError;
  AuditStatus get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataSummaryAuditModelCopyWith<DataSummaryAuditModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataSummaryAuditModelCopyWith<$Res> {
  factory $DataSummaryAuditModelCopyWith(DataSummaryAuditModel value,
          $Res Function(DataSummaryAuditModel) then) =
      _$DataSummaryAuditModelCopyWithImpl<$Res, DataSummaryAuditModel>;
  @useResult
  $Res call(
      {int id,
      String? kdtk,
      DateTime? tanggal,
      double summary,
      List<AdjustmentAuditModel>? adjust,
      AuditStatus status});
}

/// @nodoc
class _$DataSummaryAuditModelCopyWithImpl<$Res,
        $Val extends DataSummaryAuditModel>
    implements $DataSummaryAuditModelCopyWith<$Res> {
  _$DataSummaryAuditModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? kdtk = freezed,
    Object? tanggal = freezed,
    Object? summary = null,
    Object? adjust = freezed,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      kdtk: freezed == kdtk
          ? _value.kdtk
          : kdtk // ignore: cast_nullable_to_non_nullable
              as String?,
      tanggal: freezed == tanggal
          ? _value.tanggal
          : tanggal // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as double,
      adjust: freezed == adjust
          ? _value.adjust
          : adjust // ignore: cast_nullable_to_non_nullable
              as List<AdjustmentAuditModel>?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuditStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataSummaryAuditModelCopyWith<$Res>
    implements $DataSummaryAuditModelCopyWith<$Res> {
  factory _$$_DataSummaryAuditModelCopyWith(_$_DataSummaryAuditModel value,
          $Res Function(_$_DataSummaryAuditModel) then) =
      __$$_DataSummaryAuditModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? kdtk,
      DateTime? tanggal,
      double summary,
      List<AdjustmentAuditModel>? adjust,
      AuditStatus status});
}

/// @nodoc
class __$$_DataSummaryAuditModelCopyWithImpl<$Res>
    extends _$DataSummaryAuditModelCopyWithImpl<$Res, _$_DataSummaryAuditModel>
    implements _$$_DataSummaryAuditModelCopyWith<$Res> {
  __$$_DataSummaryAuditModelCopyWithImpl(_$_DataSummaryAuditModel _value,
      $Res Function(_$_DataSummaryAuditModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? kdtk = freezed,
    Object? tanggal = freezed,
    Object? summary = null,
    Object? adjust = freezed,
    Object? status = null,
  }) {
    return _then(_$_DataSummaryAuditModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      kdtk: freezed == kdtk
          ? _value.kdtk
          : kdtk // ignore: cast_nullable_to_non_nullable
              as String?,
      tanggal: freezed == tanggal
          ? _value.tanggal
          : tanggal // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as double,
      adjust: freezed == adjust
          ? _value._adjust
          : adjust // ignore: cast_nullable_to_non_nullable
              as List<AdjustmentAuditModel>?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuditStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataSummaryAuditModel extends _DataSummaryAuditModel {
  const _$_DataSummaryAuditModel(
      {this.id = 0,
      this.kdtk,
      this.tanggal,
      this.summary = 0.0,
      final List<AdjustmentAuditModel>? adjust,
      this.status = AuditStatus.initial})
      : _adjust = adjust,
        super._();

  factory _$_DataSummaryAuditModel.fromJson(Map<String, dynamic> json) =>
      _$$_DataSummaryAuditModelFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  final String? kdtk;
  @override
  final DateTime? tanggal;
  @override
  @JsonKey()
  final double summary;
  final List<AdjustmentAuditModel>? _adjust;
  @override
  List<AdjustmentAuditModel>? get adjust {
    final value = _adjust;
    if (value == null) return null;
    if (_adjust is EqualUnmodifiableListView) return _adjust;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final AuditStatus status;

  @override
  String toString() {
    return 'DataSummaryAuditModel(id: $id, kdtk: $kdtk, tanggal: $tanggal, summary: $summary, adjust: $adjust, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataSummaryAuditModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.kdtk, kdtk) || other.kdtk == kdtk) &&
            (identical(other.tanggal, tanggal) || other.tanggal == tanggal) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            const DeepCollectionEquality().equals(other._adjust, _adjust) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, kdtk, tanggal, summary,
      const DeepCollectionEquality().hash(_adjust), status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataSummaryAuditModelCopyWith<_$_DataSummaryAuditModel> get copyWith =>
      __$$_DataSummaryAuditModelCopyWithImpl<_$_DataSummaryAuditModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataSummaryAuditModelToJson(
      this,
    );
  }
}

abstract class _DataSummaryAuditModel extends DataSummaryAuditModel {
  const factory _DataSummaryAuditModel(
      {final int id,
      final String? kdtk,
      final DateTime? tanggal,
      final double summary,
      final List<AdjustmentAuditModel>? adjust,
      final AuditStatus status}) = _$_DataSummaryAuditModel;
  const _DataSummaryAuditModel._() : super._();

  factory _DataSummaryAuditModel.fromJson(Map<String, dynamic> json) =
      _$_DataSummaryAuditModel.fromJson;

  @override
  int get id;
  @override
  String? get kdtk;
  @override
  DateTime? get tanggal;
  @override
  double get summary;
  @override
  List<AdjustmentAuditModel>? get adjust;
  @override
  AuditStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_DataSummaryAuditModelCopyWith<_$_DataSummaryAuditModel> get copyWith =>
      throw _privateConstructorUsedError;
}

AdjustmentAuditModel _$AdjustmentAuditModelFromJson(Map<String, dynamic> json) {
  return _AdjustmentAuditModel.fromJson(json);
}

/// @nodoc
mixin _$AdjustmentAuditModel {
  int get id => throw _privateConstructorUsedError;
  double get nominal => throw _privateConstructorUsedError;
  String? get desc => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdjustmentAuditModelCopyWith<AdjustmentAuditModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdjustmentAuditModelCopyWith<$Res> {
  factory $AdjustmentAuditModelCopyWith(AdjustmentAuditModel value,
          $Res Function(AdjustmentAuditModel) then) =
      _$AdjustmentAuditModelCopyWithImpl<$Res, AdjustmentAuditModel>;
  @useResult
  $Res call({int id, double nominal, String? desc});
}

/// @nodoc
class _$AdjustmentAuditModelCopyWithImpl<$Res,
        $Val extends AdjustmentAuditModel>
    implements $AdjustmentAuditModelCopyWith<$Res> {
  _$AdjustmentAuditModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nominal = null,
    Object? desc = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nominal: null == nominal
          ? _value.nominal
          : nominal // ignore: cast_nullable_to_non_nullable
              as double,
      desc: freezed == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AdjustmentAuditModelCopyWith<$Res>
    implements $AdjustmentAuditModelCopyWith<$Res> {
  factory _$$_AdjustmentAuditModelCopyWith(_$_AdjustmentAuditModel value,
          $Res Function(_$_AdjustmentAuditModel) then) =
      __$$_AdjustmentAuditModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, double nominal, String? desc});
}

/// @nodoc
class __$$_AdjustmentAuditModelCopyWithImpl<$Res>
    extends _$AdjustmentAuditModelCopyWithImpl<$Res, _$_AdjustmentAuditModel>
    implements _$$_AdjustmentAuditModelCopyWith<$Res> {
  __$$_AdjustmentAuditModelCopyWithImpl(_$_AdjustmentAuditModel _value,
      $Res Function(_$_AdjustmentAuditModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nominal = null,
    Object? desc = freezed,
  }) {
    return _then(_$_AdjustmentAuditModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nominal: null == nominal
          ? _value.nominal
          : nominal // ignore: cast_nullable_to_non_nullable
              as double,
      desc: freezed == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AdjustmentAuditModel implements _AdjustmentAuditModel {
  const _$_AdjustmentAuditModel({this.id = 0, this.nominal = 0.0, this.desc});

  factory _$_AdjustmentAuditModel.fromJson(Map<String, dynamic> json) =>
      _$$_AdjustmentAuditModelFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final double nominal;
  @override
  final String? desc;

  @override
  String toString() {
    return 'AdjustmentAuditModel(id: $id, nominal: $nominal, desc: $desc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AdjustmentAuditModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nominal, nominal) || other.nominal == nominal) &&
            (identical(other.desc, desc) || other.desc == desc));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, nominal, desc);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AdjustmentAuditModelCopyWith<_$_AdjustmentAuditModel> get copyWith =>
      __$$_AdjustmentAuditModelCopyWithImpl<_$_AdjustmentAuditModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AdjustmentAuditModelToJson(
      this,
    );
  }
}

abstract class _AdjustmentAuditModel implements AdjustmentAuditModel {
  const factory _AdjustmentAuditModel(
      {final int id,
      final double nominal,
      final String? desc}) = _$_AdjustmentAuditModel;

  factory _AdjustmentAuditModel.fromJson(Map<String, dynamic> json) =
      _$_AdjustmentAuditModel.fromJson;

  @override
  int get id;
  @override
  double get nominal;
  @override
  String? get desc;
  @override
  @JsonKey(ignore: true)
  _$$_AdjustmentAuditModelCopyWith<_$_AdjustmentAuditModel> get copyWith =>
      throw _privateConstructorUsedError;
}
