// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_master.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DeliveryMaster {
  String? get kdtk => throw _privateConstructorUsedError;
  DataMaster? get dataMaster => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeliveryMasterCopyWith<DeliveryMaster> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryMasterCopyWith<$Res> {
  factory $DeliveryMasterCopyWith(
          DeliveryMaster value, $Res Function(DeliveryMaster) then) =
      _$DeliveryMasterCopyWithImpl<$Res, DeliveryMaster>;
  @useResult
  $Res call({String? kdtk, DataMaster? dataMaster});

  $DataMasterCopyWith<$Res>? get dataMaster;
}

/// @nodoc
class _$DeliveryMasterCopyWithImpl<$Res, $Val extends DeliveryMaster>
    implements $DeliveryMasterCopyWith<$Res> {
  _$DeliveryMasterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kdtk = freezed,
    Object? dataMaster = freezed,
  }) {
    return _then(_value.copyWith(
      kdtk: freezed == kdtk
          ? _value.kdtk
          : kdtk // ignore: cast_nullable_to_non_nullable
              as String?,
      dataMaster: freezed == dataMaster
          ? _value.dataMaster
          : dataMaster // ignore: cast_nullable_to_non_nullable
              as DataMaster?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataMasterCopyWith<$Res>? get dataMaster {
    if (_value.dataMaster == null) {
      return null;
    }

    return $DataMasterCopyWith<$Res>(_value.dataMaster!, (value) {
      return _then(_value.copyWith(dataMaster: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DeliveryMasterCopyWith<$Res>
    implements $DeliveryMasterCopyWith<$Res> {
  factory _$$_DeliveryMasterCopyWith(
          _$_DeliveryMaster value, $Res Function(_$_DeliveryMaster) then) =
      __$$_DeliveryMasterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? kdtk, DataMaster? dataMaster});

  @override
  $DataMasterCopyWith<$Res>? get dataMaster;
}

/// @nodoc
class __$$_DeliveryMasterCopyWithImpl<$Res>
    extends _$DeliveryMasterCopyWithImpl<$Res, _$_DeliveryMaster>
    implements _$$_DeliveryMasterCopyWith<$Res> {
  __$$_DeliveryMasterCopyWithImpl(
      _$_DeliveryMaster _value, $Res Function(_$_DeliveryMaster) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kdtk = freezed,
    Object? dataMaster = freezed,
  }) {
    return _then(_$_DeliveryMaster(
      kdtk: freezed == kdtk
          ? _value.kdtk
          : kdtk // ignore: cast_nullable_to_non_nullable
              as String?,
      dataMaster: freezed == dataMaster
          ? _value.dataMaster
          : dataMaster // ignore: cast_nullable_to_non_nullable
              as DataMaster?,
    ));
  }
}

/// @nodoc

class _$_DeliveryMaster extends _DeliveryMaster {
  const _$_DeliveryMaster({this.kdtk, this.dataMaster}) : super._();

  @override
  final String? kdtk;
  @override
  final DataMaster? dataMaster;

  @override
  String toString() {
    return 'DeliveryMaster(kdtk: $kdtk, dataMaster: $dataMaster)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeliveryMaster &&
            (identical(other.kdtk, kdtk) || other.kdtk == kdtk) &&
            (identical(other.dataMaster, dataMaster) ||
                other.dataMaster == dataMaster));
  }

  @override
  int get hashCode => Object.hash(runtimeType, kdtk, dataMaster);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeliveryMasterCopyWith<_$_DeliveryMaster> get copyWith =>
      __$$_DeliveryMasterCopyWithImpl<_$_DeliveryMaster>(this, _$identity);
}

abstract class _DeliveryMaster extends DeliveryMaster {
  const factory _DeliveryMaster(
      {final String? kdtk, final DataMaster? dataMaster}) = _$_DeliveryMaster;
  const _DeliveryMaster._() : super._();

  @override
  String? get kdtk;
  @override
  DataMaster? get dataMaster;
  @override
  @JsonKey(ignore: true)
  _$$_DeliveryMasterCopyWith<_$_DeliveryMaster> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DataMaster {
  List<DeliveryInfo>? get deliveryInfo => throw _privateConstructorUsedError;
  List<SalesDate>? get salesDate => throw _privateConstructorUsedError;
  List<SenderInfo>? get senderInfo => throw _privateConstructorUsedError;
  List<MasterBst>? get masterBst => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DataMasterCopyWith<DataMaster> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataMasterCopyWith<$Res> {
  factory $DataMasterCopyWith(
          DataMaster value, $Res Function(DataMaster) then) =
      _$DataMasterCopyWithImpl<$Res, DataMaster>;
  @useResult
  $Res call(
      {List<DeliveryInfo>? deliveryInfo,
      List<SalesDate>? salesDate,
      List<SenderInfo>? senderInfo,
      List<MasterBst>? masterBst});
}

/// @nodoc
class _$DataMasterCopyWithImpl<$Res, $Val extends DataMaster>
    implements $DataMasterCopyWith<$Res> {
  _$DataMasterCopyWithImpl(this._value, this._then);

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
              as List<DeliveryInfo>?,
      salesDate: freezed == salesDate
          ? _value.salesDate
          : salesDate // ignore: cast_nullable_to_non_nullable
              as List<SalesDate>?,
      senderInfo: freezed == senderInfo
          ? _value.senderInfo
          : senderInfo // ignore: cast_nullable_to_non_nullable
              as List<SenderInfo>?,
      masterBst: freezed == masterBst
          ? _value.masterBst
          : masterBst // ignore: cast_nullable_to_non_nullable
              as List<MasterBst>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataMasterCopyWith<$Res>
    implements $DataMasterCopyWith<$Res> {
  factory _$$_DataMasterCopyWith(
          _$_DataMaster value, $Res Function(_$_DataMaster) then) =
      __$$_DataMasterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<DeliveryInfo>? deliveryInfo,
      List<SalesDate>? salesDate,
      List<SenderInfo>? senderInfo,
      List<MasterBst>? masterBst});
}

/// @nodoc
class __$$_DataMasterCopyWithImpl<$Res>
    extends _$DataMasterCopyWithImpl<$Res, _$_DataMaster>
    implements _$$_DataMasterCopyWith<$Res> {
  __$$_DataMasterCopyWithImpl(
      _$_DataMaster _value, $Res Function(_$_DataMaster) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deliveryInfo = freezed,
    Object? salesDate = freezed,
    Object? senderInfo = freezed,
    Object? masterBst = freezed,
  }) {
    return _then(_$_DataMaster(
      deliveryInfo: freezed == deliveryInfo
          ? _value._deliveryInfo
          : deliveryInfo // ignore: cast_nullable_to_non_nullable
              as List<DeliveryInfo>?,
      salesDate: freezed == salesDate
          ? _value._salesDate
          : salesDate // ignore: cast_nullable_to_non_nullable
              as List<SalesDate>?,
      senderInfo: freezed == senderInfo
          ? _value._senderInfo
          : senderInfo // ignore: cast_nullable_to_non_nullable
              as List<SenderInfo>?,
      masterBst: freezed == masterBst
          ? _value._masterBst
          : masterBst // ignore: cast_nullable_to_non_nullable
              as List<MasterBst>?,
    ));
  }
}

/// @nodoc

class _$_DataMaster extends _DataMaster {
  const _$_DataMaster(
      {final List<DeliveryInfo>? deliveryInfo,
      final List<SalesDate>? salesDate,
      final List<SenderInfo>? senderInfo,
      final List<MasterBst>? masterBst})
      : _deliveryInfo = deliveryInfo,
        _salesDate = salesDate,
        _senderInfo = senderInfo,
        _masterBst = masterBst,
        super._();

  final List<DeliveryInfo>? _deliveryInfo;
  @override
  List<DeliveryInfo>? get deliveryInfo {
    final value = _deliveryInfo;
    if (value == null) return null;
    if (_deliveryInfo is EqualUnmodifiableListView) return _deliveryInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SalesDate>? _salesDate;
  @override
  List<SalesDate>? get salesDate {
    final value = _salesDate;
    if (value == null) return null;
    if (_salesDate is EqualUnmodifiableListView) return _salesDate;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SenderInfo>? _senderInfo;
  @override
  List<SenderInfo>? get senderInfo {
    final value = _senderInfo;
    if (value == null) return null;
    if (_senderInfo is EqualUnmodifiableListView) return _senderInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MasterBst>? _masterBst;
  @override
  List<MasterBst>? get masterBst {
    final value = _masterBst;
    if (value == null) return null;
    if (_masterBst is EqualUnmodifiableListView) return _masterBst;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DataMaster(deliveryInfo: $deliveryInfo, salesDate: $salesDate, senderInfo: $senderInfo, masterBst: $masterBst)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataMaster &&
            const DeepCollectionEquality()
                .equals(other._deliveryInfo, _deliveryInfo) &&
            const DeepCollectionEquality()
                .equals(other._salesDate, _salesDate) &&
            const DeepCollectionEquality()
                .equals(other._senderInfo, _senderInfo) &&
            const DeepCollectionEquality()
                .equals(other._masterBst, _masterBst));
  }

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
  _$$_DataMasterCopyWith<_$_DataMaster> get copyWith =>
      __$$_DataMasterCopyWithImpl<_$_DataMaster>(this, _$identity);
}

abstract class _DataMaster extends DataMaster {
  const factory _DataMaster(
      {final List<DeliveryInfo>? deliveryInfo,
      final List<SalesDate>? salesDate,
      final List<SenderInfo>? senderInfo,
      final List<MasterBst>? masterBst}) = _$_DataMaster;
  const _DataMaster._() : super._();

  @override
  List<DeliveryInfo>? get deliveryInfo;
  @override
  List<SalesDate>? get salesDate;
  @override
  List<SenderInfo>? get senderInfo;
  @override
  List<MasterBst>? get masterBst;
  @override
  @JsonKey(ignore: true)
  _$$_DataMasterCopyWith<_$_DataMaster> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DeliveryInfo {
  String? get jenis => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get driver => throw _privateConstructorUsedError;
  String? get nopol => throw _privateConstructorUsedError;
  DateTime? get estimasi => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeliveryInfoCopyWith<DeliveryInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryInfoCopyWith<$Res> {
  factory $DeliveryInfoCopyWith(
          DeliveryInfo value, $Res Function(DeliveryInfo) then) =
      _$DeliveryInfoCopyWithImpl<$Res, DeliveryInfo>;
  @useResult
  $Res call(
      {String? jenis,
      String? id,
      String? driver,
      String? nopol,
      DateTime? estimasi});
}

/// @nodoc
class _$DeliveryInfoCopyWithImpl<$Res, $Val extends DeliveryInfo>
    implements $DeliveryInfoCopyWith<$Res> {
  _$DeliveryInfoCopyWithImpl(this._value, this._then);

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
abstract class _$$_DeliveryInfoCopyWith<$Res>
    implements $DeliveryInfoCopyWith<$Res> {
  factory _$$_DeliveryInfoCopyWith(
          _$_DeliveryInfo value, $Res Function(_$_DeliveryInfo) then) =
      __$$_DeliveryInfoCopyWithImpl<$Res>;
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
class __$$_DeliveryInfoCopyWithImpl<$Res>
    extends _$DeliveryInfoCopyWithImpl<$Res, _$_DeliveryInfo>
    implements _$$_DeliveryInfoCopyWith<$Res> {
  __$$_DeliveryInfoCopyWithImpl(
      _$_DeliveryInfo _value, $Res Function(_$_DeliveryInfo) _then)
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
    return _then(_$_DeliveryInfo(
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

class _$_DeliveryInfo extends _DeliveryInfo {
  const _$_DeliveryInfo(
      {this.jenis, this.id, this.driver, this.nopol, this.estimasi})
      : super._();

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
    return 'DeliveryInfo(jenis: $jenis, id: $id, driver: $driver, nopol: $nopol, estimasi: $estimasi)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeliveryInfo &&
            (identical(other.jenis, jenis) || other.jenis == jenis) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.driver, driver) || other.driver == driver) &&
            (identical(other.nopol, nopol) || other.nopol == nopol) &&
            (identical(other.estimasi, estimasi) ||
                other.estimasi == estimasi));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, jenis, id, driver, nopol, estimasi);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeliveryInfoCopyWith<_$_DeliveryInfo> get copyWith =>
      __$$_DeliveryInfoCopyWithImpl<_$_DeliveryInfo>(this, _$identity);
}

abstract class _DeliveryInfo extends DeliveryInfo {
  const factory _DeliveryInfo(
      {final String? jenis,
      final String? id,
      final String? driver,
      final String? nopol,
      final DateTime? estimasi}) = _$_DeliveryInfo;
  const _DeliveryInfo._() : super._();

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
  _$$_DeliveryInfoCopyWith<_$_DeliveryInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SalesDate {
  DateTime? get tanggal => throw _privateConstructorUsedError;
  String? get setoran => throw _privateConstructorUsedError;
  List<String>? get shift => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SalesDateCopyWith<SalesDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesDateCopyWith<$Res> {
  factory $SalesDateCopyWith(SalesDate value, $Res Function(SalesDate) then) =
      _$SalesDateCopyWithImpl<$Res, SalesDate>;
  @useResult
  $Res call({DateTime? tanggal, String? setoran, List<String>? shift});
}

/// @nodoc
class _$SalesDateCopyWithImpl<$Res, $Val extends SalesDate>
    implements $SalesDateCopyWith<$Res> {
  _$SalesDateCopyWithImpl(this._value, this._then);

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
abstract class _$$_SalesDateCopyWith<$Res> implements $SalesDateCopyWith<$Res> {
  factory _$$_SalesDateCopyWith(
          _$_SalesDate value, $Res Function(_$_SalesDate) then) =
      __$$_SalesDateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime? tanggal, String? setoran, List<String>? shift});
}

/// @nodoc
class __$$_SalesDateCopyWithImpl<$Res>
    extends _$SalesDateCopyWithImpl<$Res, _$_SalesDate>
    implements _$$_SalesDateCopyWith<$Res> {
  __$$_SalesDateCopyWithImpl(
      _$_SalesDate _value, $Res Function(_$_SalesDate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tanggal = freezed,
    Object? setoran = freezed,
    Object? shift = freezed,
  }) {
    return _then(_$_SalesDate(
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

class _$_SalesDate extends _SalesDate {
  const _$_SalesDate({this.tanggal, this.setoran, final List<String>? shift})
      : _shift = shift,
        super._();

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
    return 'SalesDate(tanggal: $tanggal, setoran: $setoran, shift: $shift)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SalesDate &&
            (identical(other.tanggal, tanggal) || other.tanggal == tanggal) &&
            (identical(other.setoran, setoran) || other.setoran == setoran) &&
            const DeepCollectionEquality().equals(other._shift, _shift));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tanggal, setoran,
      const DeepCollectionEquality().hash(_shift));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SalesDateCopyWith<_$_SalesDate> get copyWith =>
      __$$_SalesDateCopyWithImpl<_$_SalesDate>(this, _$identity);
}

abstract class _SalesDate extends SalesDate {
  const factory _SalesDate(
      {final DateTime? tanggal,
      final String? setoran,
      final List<String>? shift}) = _$_SalesDate;
  const _SalesDate._() : super._();

  @override
  DateTime? get tanggal;
  @override
  String? get setoran;
  @override
  List<String>? get shift;
  @override
  @JsonKey(ignore: true)
  _$$_SalesDateCopyWith<_$_SalesDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SenderInfo {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get keterangan => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SenderInfoCopyWith<SenderInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SenderInfoCopyWith<$Res> {
  factory $SenderInfoCopyWith(
          SenderInfo value, $Res Function(SenderInfo) then) =
      _$SenderInfoCopyWithImpl<$Res, SenderInfo>;
  @useResult
  $Res call({String? id, String? name, String? keterangan});
}

/// @nodoc
class _$SenderInfoCopyWithImpl<$Res, $Val extends SenderInfo>
    implements $SenderInfoCopyWith<$Res> {
  _$SenderInfoCopyWithImpl(this._value, this._then);

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
abstract class _$$_SenderInfoCopyWith<$Res>
    implements $SenderInfoCopyWith<$Res> {
  factory _$$_SenderInfoCopyWith(
          _$_SenderInfo value, $Res Function(_$_SenderInfo) then) =
      __$$_SenderInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name, String? keterangan});
}

/// @nodoc
class __$$_SenderInfoCopyWithImpl<$Res>
    extends _$SenderInfoCopyWithImpl<$Res, _$_SenderInfo>
    implements _$$_SenderInfoCopyWith<$Res> {
  __$$_SenderInfoCopyWithImpl(
      _$_SenderInfo _value, $Res Function(_$_SenderInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? keterangan = freezed,
  }) {
    return _then(_$_SenderInfo(
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

class _$_SenderInfo extends _SenderInfo {
  const _$_SenderInfo({this.id, this.name, this.keterangan}) : super._();

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? keterangan;

  @override
  String toString() {
    return 'SenderInfo(id: $id, name: $name, keterangan: $keterangan)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SenderInfo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.keterangan, keterangan) ||
                other.keterangan == keterangan));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, keterangan);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SenderInfoCopyWith<_$_SenderInfo> get copyWith =>
      __$$_SenderInfoCopyWithImpl<_$_SenderInfo>(this, _$identity);
}

abstract class _SenderInfo extends SenderInfo {
  const factory _SenderInfo(
      {final String? id,
      final String? name,
      final String? keterangan}) = _$_SenderInfo;
  const _SenderInfo._() : super._();

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get keterangan;
  @override
  @JsonKey(ignore: true)
  _$$_SenderInfoCopyWith<_$_SenderInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MasterBst {
  int? get id => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  String? get hint => throw _privateConstructorUsedError;
  int? get nominal => throw _privateConstructorUsedError;
  bool get isDesc => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MasterBstCopyWith<MasterBst> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MasterBstCopyWith<$Res> {
  factory $MasterBstCopyWith(MasterBst value, $Res Function(MasterBst) then) =
      _$MasterBstCopyWithImpl<$Res, MasterBst>;
  @useResult
  $Res call(
      {int? id,
      String? label,
      String? hint,
      int? nominal,
      bool isDesc,
      String? description});
}

/// @nodoc
class _$MasterBstCopyWithImpl<$Res, $Val extends MasterBst>
    implements $MasterBstCopyWith<$Res> {
  _$MasterBstCopyWithImpl(this._value, this._then);

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
    Object? isDesc = null,
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
      isDesc: null == isDesc
          ? _value.isDesc
          : isDesc // ignore: cast_nullable_to_non_nullable
              as bool,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MasterBstCopyWith<$Res> implements $MasterBstCopyWith<$Res> {
  factory _$$_MasterBstCopyWith(
          _$_MasterBst value, $Res Function(_$_MasterBst) then) =
      __$$_MasterBstCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? label,
      String? hint,
      int? nominal,
      bool isDesc,
      String? description});
}

/// @nodoc
class __$$_MasterBstCopyWithImpl<$Res>
    extends _$MasterBstCopyWithImpl<$Res, _$_MasterBst>
    implements _$$_MasterBstCopyWith<$Res> {
  __$$_MasterBstCopyWithImpl(
      _$_MasterBst _value, $Res Function(_$_MasterBst) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? label = freezed,
    Object? hint = freezed,
    Object? nominal = freezed,
    Object? isDesc = null,
    Object? description = freezed,
  }) {
    return _then(_$_MasterBst(
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
      isDesc: null == isDesc
          ? _value.isDesc
          : isDesc // ignore: cast_nullable_to_non_nullable
              as bool,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_MasterBst extends _MasterBst {
  const _$_MasterBst(
      {this.id,
      this.label,
      this.hint,
      this.nominal,
      this.isDesc = false,
      this.description})
      : super._();

  @override
  final int? id;
  @override
  final String? label;
  @override
  final String? hint;
  @override
  final int? nominal;
  @override
  @JsonKey()
  final bool isDesc;
  @override
  final String? description;

  @override
  String toString() {
    return 'MasterBst(id: $id, label: $label, hint: $hint, nominal: $nominal, isDesc: $isDesc, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MasterBst &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.hint, hint) || other.hint == hint) &&
            (identical(other.nominal, nominal) || other.nominal == nominal) &&
            (identical(other.isDesc, isDesc) || other.isDesc == isDesc) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, label, hint, nominal, isDesc, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MasterBstCopyWith<_$_MasterBst> get copyWith =>
      __$$_MasterBstCopyWithImpl<_$_MasterBst>(this, _$identity);
}

abstract class _MasterBst extends MasterBst {
  const factory _MasterBst(
      {final int? id,
      final String? label,
      final String? hint,
      final int? nominal,
      final bool isDesc,
      final String? description}) = _$_MasterBst;
  const _MasterBst._() : super._();

  @override
  int? get id;
  @override
  String? get label;
  @override
  String? get hint;
  @override
  int? get nominal;
  @override
  bool get isDesc;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_MasterBstCopyWith<_$_MasterBst> get copyWith =>
      throw _privateConstructorUsedError;
}
