// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_master_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeliveryMasterModel _$DeliveryMasterModelFromJson(Map<String, dynamic> json) {
  return _DeliveryMasterModel.fromJson(json);
}

/// @nodoc
mixin _$DeliveryMasterModel {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get kdtk => throw _privateConstructorUsedError;
  @JsonKey(name: 'data_master')
  DataMasterModel? get dataMaster => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryMasterModelCopyWith<DeliveryMasterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryMasterModelCopyWith<$Res> {
  factory $DeliveryMasterModelCopyWith(
          DeliveryMasterModel value, $Res Function(DeliveryMasterModel) then) =
      _$DeliveryMasterModelCopyWithImpl<$Res, DeliveryMasterModel>;
  @useResult
  $Res call(
      {int? code,
      String? message,
      String? kdtk,
      @JsonKey(name: 'data_master') DataMasterModel? dataMaster});

  $DataMasterModelCopyWith<$Res>? get dataMaster;
}

/// @nodoc
class _$DeliveryMasterModelCopyWithImpl<$Res, $Val extends DeliveryMasterModel>
    implements $DeliveryMasterModelCopyWith<$Res> {
  _$DeliveryMasterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? kdtk = freezed,
    Object? dataMaster = freezed,
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
      kdtk: freezed == kdtk
          ? _value.kdtk
          : kdtk // ignore: cast_nullable_to_non_nullable
              as String?,
      dataMaster: freezed == dataMaster
          ? _value.dataMaster
          : dataMaster // ignore: cast_nullable_to_non_nullable
              as DataMasterModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataMasterModelCopyWith<$Res>? get dataMaster {
    if (_value.dataMaster == null) {
      return null;
    }

    return $DataMasterModelCopyWith<$Res>(_value.dataMaster!, (value) {
      return _then(_value.copyWith(dataMaster: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DeliveryMasterModelCopyWith<$Res>
    implements $DeliveryMasterModelCopyWith<$Res> {
  factory _$$_DeliveryMasterModelCopyWith(_$_DeliveryMasterModel value,
          $Res Function(_$_DeliveryMasterModel) then) =
      __$$_DeliveryMasterModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? code,
      String? message,
      String? kdtk,
      @JsonKey(name: 'data_master') DataMasterModel? dataMaster});

  @override
  $DataMasterModelCopyWith<$Res>? get dataMaster;
}

/// @nodoc
class __$$_DeliveryMasterModelCopyWithImpl<$Res>
    extends _$DeliveryMasterModelCopyWithImpl<$Res, _$_DeliveryMasterModel>
    implements _$$_DeliveryMasterModelCopyWith<$Res> {
  __$$_DeliveryMasterModelCopyWithImpl(_$_DeliveryMasterModel _value,
      $Res Function(_$_DeliveryMasterModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? kdtk = freezed,
    Object? dataMaster = freezed,
  }) {
    return _then(_$_DeliveryMasterModel(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      kdtk: freezed == kdtk
          ? _value.kdtk
          : kdtk // ignore: cast_nullable_to_non_nullable
              as String?,
      dataMaster: freezed == dataMaster
          ? _value.dataMaster
          : dataMaster // ignore: cast_nullable_to_non_nullable
              as DataMasterModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_DeliveryMasterModel implements _DeliveryMasterModel {
  const _$_DeliveryMasterModel(
      {this.code,
      this.message,
      this.kdtk,
      @JsonKey(name: 'data_master') this.dataMaster});

  factory _$_DeliveryMasterModel.fromJson(Map<String, dynamic> json) =>
      _$$_DeliveryMasterModelFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final String? kdtk;
  @override
  @JsonKey(name: 'data_master')
  final DataMasterModel? dataMaster;

  @override
  String toString() {
    return 'DeliveryMasterModel(code: $code, message: $message, kdtk: $kdtk, dataMaster: $dataMaster)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeliveryMasterModel &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.kdtk, kdtk) || other.kdtk == kdtk) &&
            (identical(other.dataMaster, dataMaster) ||
                other.dataMaster == dataMaster));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, kdtk, dataMaster);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeliveryMasterModelCopyWith<_$_DeliveryMasterModel> get copyWith =>
      __$$_DeliveryMasterModelCopyWithImpl<_$_DeliveryMasterModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeliveryMasterModelToJson(
      this,
    );
  }
}

abstract class _DeliveryMasterModel implements DeliveryMasterModel {
  const factory _DeliveryMasterModel(
          {final int? code,
          final String? message,
          final String? kdtk,
          @JsonKey(name: 'data_master') final DataMasterModel? dataMaster}) =
      _$_DeliveryMasterModel;

  factory _DeliveryMasterModel.fromJson(Map<String, dynamic> json) =
      _$_DeliveryMasterModel.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  String? get kdtk;
  @override
  @JsonKey(name: 'data_master')
  DataMasterModel? get dataMaster;
  @override
  @JsonKey(ignore: true)
  _$$_DeliveryMasterModelCopyWith<_$_DeliveryMasterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

DataMasterModel _$DataMasterModelFromJson(Map<String, dynamic> json) {
  return _DataMasterModel.fromJson(json);
}

/// @nodoc
mixin _$DataMasterModel {
  @JsonKey(name: 'delivery_info')
  List<DeliveryInfoModel>? get deliveryInfo =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'sales_date')
  List<SalesDateModel>? get salesDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'sender_info')
  List<SenderInfoModel>? get senderInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_bst')
  List<MasterBstModel>? get masterBst => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataMasterModelCopyWith<DataMasterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataMasterModelCopyWith<$Res> {
  factory $DataMasterModelCopyWith(
          DataMasterModel value, $Res Function(DataMasterModel) then) =
      _$DataMasterModelCopyWithImpl<$Res, DataMasterModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'delivery_info') List<DeliveryInfoModel>? deliveryInfo,
      @JsonKey(name: 'sales_date') List<SalesDateModel>? salesDate,
      @JsonKey(name: 'sender_info') List<SenderInfoModel>? senderInfo,
      @JsonKey(name: 'master_bst') List<MasterBstModel>? masterBst});
}

/// @nodoc
class _$DataMasterModelCopyWithImpl<$Res, $Val extends DataMasterModel>
    implements $DataMasterModelCopyWith<$Res> {
  _$DataMasterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deliveryInfo = freezed,
    Object? salesDate = freezed,
    Object? senderInfo = freezed,
    Object? masterBst = freezed,
  }) {
    return _then(_value.copyWith(
      deliveryInfo: freezed == deliveryInfo
          ? _value.deliveryInfo
          : deliveryInfo // ignore: cast_nullable_to_non_nullable
              as List<DeliveryInfoModel>?,
      salesDate: freezed == salesDate
          ? _value.salesDate
          : salesDate // ignore: cast_nullable_to_non_nullable
              as List<SalesDateModel>?,
      senderInfo: freezed == senderInfo
          ? _value.senderInfo
          : senderInfo // ignore: cast_nullable_to_non_nullable
              as List<SenderInfoModel>?,
      masterBst: freezed == masterBst
          ? _value.masterBst
          : masterBst // ignore: cast_nullable_to_non_nullable
              as List<MasterBstModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataMasterModelCopyWith<$Res>
    implements $DataMasterModelCopyWith<$Res> {
  factory _$$_DataMasterModelCopyWith(
          _$_DataMasterModel value, $Res Function(_$_DataMasterModel) then) =
      __$$_DataMasterModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'delivery_info') List<DeliveryInfoModel>? deliveryInfo,
      @JsonKey(name: 'sales_date') List<SalesDateModel>? salesDate,
      @JsonKey(name: 'sender_info') List<SenderInfoModel>? senderInfo,
      @JsonKey(name: 'master_bst') List<MasterBstModel>? masterBst});
}

/// @nodoc
class __$$_DataMasterModelCopyWithImpl<$Res>
    extends _$DataMasterModelCopyWithImpl<$Res, _$_DataMasterModel>
    implements _$$_DataMasterModelCopyWith<$Res> {
  __$$_DataMasterModelCopyWithImpl(
      _$_DataMasterModel _value, $Res Function(_$_DataMasterModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deliveryInfo = freezed,
    Object? salesDate = freezed,
    Object? senderInfo = freezed,
    Object? masterBst = freezed,
  }) {
    return _then(_$_DataMasterModel(
      deliveryInfo: freezed == deliveryInfo
          ? _value._deliveryInfo
          : deliveryInfo // ignore: cast_nullable_to_non_nullable
              as List<DeliveryInfoModel>?,
      salesDate: freezed == salesDate
          ? _value._salesDate
          : salesDate // ignore: cast_nullable_to_non_nullable
              as List<SalesDateModel>?,
      senderInfo: freezed == senderInfo
          ? _value._senderInfo
          : senderInfo // ignore: cast_nullable_to_non_nullable
              as List<SenderInfoModel>?,
      masterBst: freezed == masterBst
          ? _value._masterBst
          : masterBst // ignore: cast_nullable_to_non_nullable
              as List<MasterBstModel>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_DataMasterModel implements _DataMasterModel {
  const _$_DataMasterModel(
      {@JsonKey(name: 'delivery_info')
          final List<DeliveryInfoModel>? deliveryInfo,
      @JsonKey(name: 'sales_date')
          final List<SalesDateModel>? salesDate,
      @JsonKey(name: 'sender_info')
          final List<SenderInfoModel>? senderInfo,
      @JsonKey(name: 'master_bst')
          final List<MasterBstModel>? masterBst})
      : _deliveryInfo = deliveryInfo,
        _salesDate = salesDate,
        _senderInfo = senderInfo,
        _masterBst = masterBst;

  factory _$_DataMasterModel.fromJson(Map<String, dynamic> json) =>
      _$$_DataMasterModelFromJson(json);

  final List<DeliveryInfoModel>? _deliveryInfo;
  @override
  @JsonKey(name: 'delivery_info')
  List<DeliveryInfoModel>? get deliveryInfo {
    final value = _deliveryInfo;
    if (value == null) return null;
    if (_deliveryInfo is EqualUnmodifiableListView) return _deliveryInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SalesDateModel>? _salesDate;
  @override
  @JsonKey(name: 'sales_date')
  List<SalesDateModel>? get salesDate {
    final value = _salesDate;
    if (value == null) return null;
    if (_salesDate is EqualUnmodifiableListView) return _salesDate;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SenderInfoModel>? _senderInfo;
  @override
  @JsonKey(name: 'sender_info')
  List<SenderInfoModel>? get senderInfo {
    final value = _senderInfo;
    if (value == null) return null;
    if (_senderInfo is EqualUnmodifiableListView) return _senderInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MasterBstModel>? _masterBst;
  @override
  @JsonKey(name: 'master_bst')
  List<MasterBstModel>? get masterBst {
    final value = _masterBst;
    if (value == null) return null;
    if (_masterBst is EqualUnmodifiableListView) return _masterBst;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DataMasterModel(deliveryInfo: $deliveryInfo, salesDate: $salesDate, senderInfo: $senderInfo, masterBst: $masterBst)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataMasterModel &&
            const DeepCollectionEquality()
                .equals(other._deliveryInfo, _deliveryInfo) &&
            const DeepCollectionEquality()
                .equals(other._salesDate, _salesDate) &&
            const DeepCollectionEquality()
                .equals(other._senderInfo, _senderInfo) &&
            const DeepCollectionEquality()
                .equals(other._masterBst, _masterBst));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_deliveryInfo),
      const DeepCollectionEquality().hash(_salesDate),
      const DeepCollectionEquality().hash(_senderInfo),
      const DeepCollectionEquality().hash(_masterBst));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataMasterModelCopyWith<_$_DataMasterModel> get copyWith =>
      __$$_DataMasterModelCopyWithImpl<_$_DataMasterModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataMasterModelToJson(
      this,
    );
  }
}

abstract class _DataMasterModel implements DataMasterModel {
  const factory _DataMasterModel(
      {@JsonKey(name: 'delivery_info')
          final List<DeliveryInfoModel>? deliveryInfo,
      @JsonKey(name: 'sales_date')
          final List<SalesDateModel>? salesDate,
      @JsonKey(name: 'sender_info')
          final List<SenderInfoModel>? senderInfo,
      @JsonKey(name: 'master_bst')
          final List<MasterBstModel>? masterBst}) = _$_DataMasterModel;

  factory _DataMasterModel.fromJson(Map<String, dynamic> json) =
      _$_DataMasterModel.fromJson;

  @override
  @JsonKey(name: 'delivery_info')
  List<DeliveryInfoModel>? get deliveryInfo;
  @override
  @JsonKey(name: 'sales_date')
  List<SalesDateModel>? get salesDate;
  @override
  @JsonKey(name: 'sender_info')
  List<SenderInfoModel>? get senderInfo;
  @override
  @JsonKey(name: 'master_bst')
  List<MasterBstModel>? get masterBst;
  @override
  @JsonKey(ignore: true)
  _$$_DataMasterModelCopyWith<_$_DataMasterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

DeliveryInfoModel _$DeliveryInfoModelFromJson(Map<String, dynamic> json) {
  return _DeliveryInfoModel.fromJson(json);
}

/// @nodoc
mixin _$DeliveryInfoModel {
  String? get jenis => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get driver => throw _privateConstructorUsedError;
  String? get nopol => throw _privateConstructorUsedError;
  DateTime? get estimasi => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryInfoModelCopyWith<DeliveryInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryInfoModelCopyWith<$Res> {
  factory $DeliveryInfoModelCopyWith(
          DeliveryInfoModel value, $Res Function(DeliveryInfoModel) then) =
      _$DeliveryInfoModelCopyWithImpl<$Res, DeliveryInfoModel>;
  @useResult
  $Res call(
      {String? jenis,
      String? id,
      String? driver,
      String? nopol,
      DateTime? estimasi});
}

/// @nodoc
class _$DeliveryInfoModelCopyWithImpl<$Res, $Val extends DeliveryInfoModel>
    implements $DeliveryInfoModelCopyWith<$Res> {
  _$DeliveryInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jenis = freezed,
    Object? id = freezed,
    Object? driver = freezed,
    Object? nopol = freezed,
    Object? estimasi = freezed,
  }) {
    return _then(_value.copyWith(
      jenis: freezed == jenis
          ? _value.jenis
          : jenis // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      driver: freezed == driver
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as String?,
      nopol: freezed == nopol
          ? _value.nopol
          : nopol // ignore: cast_nullable_to_non_nullable
              as String?,
      estimasi: freezed == estimasi
          ? _value.estimasi
          : estimasi // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeliveryInfoModelCopyWith<$Res>
    implements $DeliveryInfoModelCopyWith<$Res> {
  factory _$$_DeliveryInfoModelCopyWith(_$_DeliveryInfoModel value,
          $Res Function(_$_DeliveryInfoModel) then) =
      __$$_DeliveryInfoModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? jenis,
      String? id,
      String? driver,
      String? nopol,
      DateTime? estimasi});
}

/// @nodoc
class __$$_DeliveryInfoModelCopyWithImpl<$Res>
    extends _$DeliveryInfoModelCopyWithImpl<$Res, _$_DeliveryInfoModel>
    implements _$$_DeliveryInfoModelCopyWith<$Res> {
  __$$_DeliveryInfoModelCopyWithImpl(
      _$_DeliveryInfoModel _value, $Res Function(_$_DeliveryInfoModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jenis = freezed,
    Object? id = freezed,
    Object? driver = freezed,
    Object? nopol = freezed,
    Object? estimasi = freezed,
  }) {
    return _then(_$_DeliveryInfoModel(
      jenis: freezed == jenis
          ? _value.jenis
          : jenis // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      driver: freezed == driver
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as String?,
      nopol: freezed == nopol
          ? _value.nopol
          : nopol // ignore: cast_nullable_to_non_nullable
              as String?,
      estimasi: freezed == estimasi
          ? _value.estimasi
          : estimasi // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeliveryInfoModel implements _DeliveryInfoModel {
  const _$_DeliveryInfoModel(
      {this.jenis, this.id, this.driver, this.nopol, this.estimasi});

  factory _$_DeliveryInfoModel.fromJson(Map<String, dynamic> json) =>
      _$$_DeliveryInfoModelFromJson(json);

  @override
  final String? jenis;
  @override
  final String? id;
  @override
  final String? driver;
  @override
  final String? nopol;
  @override
  final DateTime? estimasi;

  @override
  String toString() {
    return 'DeliveryInfoModel(jenis: $jenis, id: $id, driver: $driver, nopol: $nopol, estimasi: $estimasi)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeliveryInfoModel &&
            (identical(other.jenis, jenis) || other.jenis == jenis) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.driver, driver) || other.driver == driver) &&
            (identical(other.nopol, nopol) || other.nopol == nopol) &&
            (identical(other.estimasi, estimasi) ||
                other.estimasi == estimasi));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, jenis, id, driver, nopol, estimasi);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeliveryInfoModelCopyWith<_$_DeliveryInfoModel> get copyWith =>
      __$$_DeliveryInfoModelCopyWithImpl<_$_DeliveryInfoModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeliveryInfoModelToJson(
      this,
    );
  }
}

abstract class _DeliveryInfoModel implements DeliveryInfoModel {
  const factory _DeliveryInfoModel(
      {final String? jenis,
      final String? id,
      final String? driver,
      final String? nopol,
      final DateTime? estimasi}) = _$_DeliveryInfoModel;

  factory _DeliveryInfoModel.fromJson(Map<String, dynamic> json) =
      _$_DeliveryInfoModel.fromJson;

  @override
  String? get jenis;
  @override
  String? get id;
  @override
  String? get driver;
  @override
  String? get nopol;
  @override
  DateTime? get estimasi;
  @override
  @JsonKey(ignore: true)
  _$$_DeliveryInfoModelCopyWith<_$_DeliveryInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

SalesDateModel _$SalesDateModelFromJson(Map<String, dynamic> json) {
  return _SalesDateModel.fromJson(json);
}

/// @nodoc
mixin _$SalesDateModel {
  DateTime? get tanggal => throw _privateConstructorUsedError;
  String? get setoran => throw _privateConstructorUsedError;
  List<String>? get shift => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SalesDateModelCopyWith<SalesDateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesDateModelCopyWith<$Res> {
  factory $SalesDateModelCopyWith(
          SalesDateModel value, $Res Function(SalesDateModel) then) =
      _$SalesDateModelCopyWithImpl<$Res, SalesDateModel>;
  @useResult
  $Res call({DateTime? tanggal, String? setoran, List<String>? shift});
}

/// @nodoc
class _$SalesDateModelCopyWithImpl<$Res, $Val extends SalesDateModel>
    implements $SalesDateModelCopyWith<$Res> {
  _$SalesDateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tanggal = freezed,
    Object? setoran = freezed,
    Object? shift = freezed,
  }) {
    return _then(_value.copyWith(
      tanggal: freezed == tanggal
          ? _value.tanggal
          : tanggal // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      setoran: freezed == setoran
          ? _value.setoran
          : setoran // ignore: cast_nullable_to_non_nullable
              as String?,
      shift: freezed == shift
          ? _value.shift
          : shift // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SalesDateModelCopyWith<$Res>
    implements $SalesDateModelCopyWith<$Res> {
  factory _$$_SalesDateModelCopyWith(
          _$_SalesDateModel value, $Res Function(_$_SalesDateModel) then) =
      __$$_SalesDateModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime? tanggal, String? setoran, List<String>? shift});
}

/// @nodoc
class __$$_SalesDateModelCopyWithImpl<$Res>
    extends _$SalesDateModelCopyWithImpl<$Res, _$_SalesDateModel>
    implements _$$_SalesDateModelCopyWith<$Res> {
  __$$_SalesDateModelCopyWithImpl(
      _$_SalesDateModel _value, $Res Function(_$_SalesDateModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tanggal = freezed,
    Object? setoran = freezed,
    Object? shift = freezed,
  }) {
    return _then(_$_SalesDateModel(
      tanggal: freezed == tanggal
          ? _value.tanggal
          : tanggal // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      setoran: freezed == setoran
          ? _value.setoran
          : setoran // ignore: cast_nullable_to_non_nullable
              as String?,
      shift: freezed == shift
          ? _value._shift
          : shift // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SalesDateModel implements _SalesDateModel {
  const _$_SalesDateModel(
      {this.tanggal, this.setoran, final List<String>? shift})
      : _shift = shift;

  factory _$_SalesDateModel.fromJson(Map<String, dynamic> json) =>
      _$$_SalesDateModelFromJson(json);

  @override
  final DateTime? tanggal;
  @override
  final String? setoran;
  final List<String>? _shift;
  @override
  List<String>? get shift {
    final value = _shift;
    if (value == null) return null;
    if (_shift is EqualUnmodifiableListView) return _shift;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SalesDateModel(tanggal: $tanggal, setoran: $setoran, shift: $shift)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SalesDateModel &&
            (identical(other.tanggal, tanggal) || other.tanggal == tanggal) &&
            (identical(other.setoran, setoran) || other.setoran == setoran) &&
            const DeepCollectionEquality().equals(other._shift, _shift));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, tanggal, setoran,
      const DeepCollectionEquality().hash(_shift));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SalesDateModelCopyWith<_$_SalesDateModel> get copyWith =>
      __$$_SalesDateModelCopyWithImpl<_$_SalesDateModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SalesDateModelToJson(
      this,
    );
  }
}

abstract class _SalesDateModel implements SalesDateModel {
  const factory _SalesDateModel(
      {final DateTime? tanggal,
      final String? setoran,
      final List<String>? shift}) = _$_SalesDateModel;

  factory _SalesDateModel.fromJson(Map<String, dynamic> json) =
      _$_SalesDateModel.fromJson;

  @override
  DateTime? get tanggal;
  @override
  String? get setoran;
  @override
  List<String>? get shift;
  @override
  @JsonKey(ignore: true)
  _$$_SalesDateModelCopyWith<_$_SalesDateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

SenderInfoModel _$SenderInfoModelFromJson(Map<String, dynamic> json) {
  return _SenderInfoModel.fromJson(json);
}

/// @nodoc
mixin _$SenderInfoModel {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get keterangan => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SenderInfoModelCopyWith<SenderInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SenderInfoModelCopyWith<$Res> {
  factory $SenderInfoModelCopyWith(
          SenderInfoModel value, $Res Function(SenderInfoModel) then) =
      _$SenderInfoModelCopyWithImpl<$Res, SenderInfoModel>;
  @useResult
  $Res call({String? id, String? name, String? keterangan});
}

/// @nodoc
class _$SenderInfoModelCopyWithImpl<$Res, $Val extends SenderInfoModel>
    implements $SenderInfoModelCopyWith<$Res> {
  _$SenderInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? keterangan = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      keterangan: freezed == keterangan
          ? _value.keterangan
          : keterangan // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SenderInfoModelCopyWith<$Res>
    implements $SenderInfoModelCopyWith<$Res> {
  factory _$$_SenderInfoModelCopyWith(
          _$_SenderInfoModel value, $Res Function(_$_SenderInfoModel) then) =
      __$$_SenderInfoModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name, String? keterangan});
}

/// @nodoc
class __$$_SenderInfoModelCopyWithImpl<$Res>
    extends _$SenderInfoModelCopyWithImpl<$Res, _$_SenderInfoModel>
    implements _$$_SenderInfoModelCopyWith<$Res> {
  __$$_SenderInfoModelCopyWithImpl(
      _$_SenderInfoModel _value, $Res Function(_$_SenderInfoModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? keterangan = freezed,
  }) {
    return _then(_$_SenderInfoModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      keterangan: freezed == keterangan
          ? _value.keterangan
          : keterangan // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SenderInfoModel implements _SenderInfoModel {
  const _$_SenderInfoModel({this.id, this.name, this.keterangan});

  factory _$_SenderInfoModel.fromJson(Map<String, dynamic> json) =>
      _$$_SenderInfoModelFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? keterangan;

  @override
  String toString() {
    return 'SenderInfoModel(id: $id, name: $name, keterangan: $keterangan)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SenderInfoModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.keterangan, keterangan) ||
                other.keterangan == keterangan));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, keterangan);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SenderInfoModelCopyWith<_$_SenderInfoModel> get copyWith =>
      __$$_SenderInfoModelCopyWithImpl<_$_SenderInfoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SenderInfoModelToJson(
      this,
    );
  }
}

abstract class _SenderInfoModel implements SenderInfoModel {
  const factory _SenderInfoModel(
      {final String? id,
      final String? name,
      final String? keterangan}) = _$_SenderInfoModel;

  factory _SenderInfoModel.fromJson(Map<String, dynamic> json) =
      _$_SenderInfoModel.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get keterangan;
  @override
  @JsonKey(ignore: true)
  _$$_SenderInfoModelCopyWith<_$_SenderInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

MasterBstModel _$MasterBstModelFromJson(Map<String, dynamic> json) {
  return _MasterBstModel.fromJson(json);
}

/// @nodoc
mixin _$MasterBstModel {
  int? get id => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  String? get hint => throw _privateConstructorUsedError;
  int? get nominal => throw _privateConstructorUsedError;
  @JsonKey(name: 'need_desc')
  bool? get isDesc => throw _privateConstructorUsedError;
  @JsonKey(name: 'keterangan')
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MasterBstModelCopyWith<MasterBstModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MasterBstModelCopyWith<$Res> {
  factory $MasterBstModelCopyWith(
          MasterBstModel value, $Res Function(MasterBstModel) then) =
      _$MasterBstModelCopyWithImpl<$Res, MasterBstModel>;
  @useResult
  $Res call(
      {int? id,
      String? label,
      String? hint,
      int? nominal,
      @JsonKey(name: 'need_desc') bool? isDesc,
      @JsonKey(name: 'keterangan') String? description});
}

/// @nodoc
class _$MasterBstModelCopyWithImpl<$Res, $Val extends MasterBstModel>
    implements $MasterBstModelCopyWith<$Res> {
  _$MasterBstModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? label = freezed,
    Object? hint = freezed,
    Object? nominal = freezed,
    Object? isDesc = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      hint: freezed == hint
          ? _value.hint
          : hint // ignore: cast_nullable_to_non_nullable
              as String?,
      nominal: freezed == nominal
          ? _value.nominal
          : nominal // ignore: cast_nullable_to_non_nullable
              as int?,
      isDesc: freezed == isDesc
          ? _value.isDesc
          : isDesc // ignore: cast_nullable_to_non_nullable
              as bool?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MasterBstModelCopyWith<$Res>
    implements $MasterBstModelCopyWith<$Res> {
  factory _$$_MasterBstModelCopyWith(
          _$_MasterBstModel value, $Res Function(_$_MasterBstModel) then) =
      __$$_MasterBstModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? label,
      String? hint,
      int? nominal,
      @JsonKey(name: 'need_desc') bool? isDesc,
      @JsonKey(name: 'keterangan') String? description});
}

/// @nodoc
class __$$_MasterBstModelCopyWithImpl<$Res>
    extends _$MasterBstModelCopyWithImpl<$Res, _$_MasterBstModel>
    implements _$$_MasterBstModelCopyWith<$Res> {
  __$$_MasterBstModelCopyWithImpl(
      _$_MasterBstModel _value, $Res Function(_$_MasterBstModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? label = freezed,
    Object? hint = freezed,
    Object? nominal = freezed,
    Object? isDesc = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_MasterBstModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      hint: freezed == hint
          ? _value.hint
          : hint // ignore: cast_nullable_to_non_nullable
              as String?,
      nominal: freezed == nominal
          ? _value.nominal
          : nominal // ignore: cast_nullable_to_non_nullable
              as int?,
      isDesc: freezed == isDesc
          ? _value.isDesc
          : isDesc // ignore: cast_nullable_to_non_nullable
              as bool?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MasterBstModel implements _MasterBstModel {
  const _$_MasterBstModel(
      {this.id,
      this.label,
      this.hint,
      this.nominal,
      @JsonKey(name: 'need_desc') this.isDesc,
      @JsonKey(name: 'keterangan') this.description});

  factory _$_MasterBstModel.fromJson(Map<String, dynamic> json) =>
      _$$_MasterBstModelFromJson(json);

  @override
  final int? id;
  @override
  final String? label;
  @override
  final String? hint;
  @override
  final int? nominal;
  @override
  @JsonKey(name: 'need_desc')
  final bool? isDesc;
  @override
  @JsonKey(name: 'keterangan')
  final String? description;

  @override
  String toString() {
    return 'MasterBstModel(id: $id, label: $label, hint: $hint, nominal: $nominal, isDesc: $isDesc, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MasterBstModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.hint, hint) || other.hint == hint) &&
            (identical(other.nominal, nominal) || other.nominal == nominal) &&
            (identical(other.isDesc, isDesc) || other.isDesc == isDesc) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, label, hint, nominal, isDesc, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MasterBstModelCopyWith<_$_MasterBstModel> get copyWith =>
      __$$_MasterBstModelCopyWithImpl<_$_MasterBstModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MasterBstModelToJson(
      this,
    );
  }
}

abstract class _MasterBstModel implements MasterBstModel {
  const factory _MasterBstModel(
          {final int? id,
          final String? label,
          final String? hint,
          final int? nominal,
          @JsonKey(name: 'need_desc') final bool? isDesc,
          @JsonKey(name: 'keterangan') final String? description}) =
      _$_MasterBstModel;

  factory _MasterBstModel.fromJson(Map<String, dynamic> json) =
      _$_MasterBstModel.fromJson;

  @override
  int? get id;
  @override
  String? get label;
  @override
  String? get hint;
  @override
  int? get nominal;
  @override
  @JsonKey(name: 'need_desc')
  bool? get isDesc;
  @override
  @JsonKey(name: 'keterangan')
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_MasterBstModelCopyWith<_$_MasterBstModel> get copyWith =>
      throw _privateConstructorUsedError;
}
