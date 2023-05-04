// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'master_collect.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MasterCollect {
  String? get toko => throw _privateConstructorUsedError;
  DeliveryInfo? get dataDelivery => throw _privateConstructorUsedError;
  CollectionInfo? get dataCollection => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MasterCollectCopyWith<MasterCollect> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MasterCollectCopyWith<$Res> {
  factory $MasterCollectCopyWith(
          MasterCollect value, $Res Function(MasterCollect) then) =
      _$MasterCollectCopyWithImpl<$Res, MasterCollect>;
  @useResult
  $Res call(
      {String? toko,
      DeliveryInfo? dataDelivery,
      CollectionInfo? dataCollection});

  $DeliveryInfoCopyWith<$Res>? get dataDelivery;
  $CollectionInfoCopyWith<$Res>? get dataCollection;
}

/// @nodoc
class _$MasterCollectCopyWithImpl<$Res, $Val extends MasterCollect>
    implements $MasterCollectCopyWith<$Res> {
  _$MasterCollectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toko = freezed,
    Object? dataDelivery = freezed,
    Object? dataCollection = freezed,
  }) {
    return _then(_value.copyWith(
      toko: freezed == toko
          ? _value.toko
          : toko // ignore: cast_nullable_to_non_nullable
              as String?,
      dataDelivery: freezed == dataDelivery
          ? _value.dataDelivery
          : dataDelivery // ignore: cast_nullable_to_non_nullable
              as DeliveryInfo?,
      dataCollection: freezed == dataCollection
          ? _value.dataCollection
          : dataCollection // ignore: cast_nullable_to_non_nullable
              as CollectionInfo?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DeliveryInfoCopyWith<$Res>? get dataDelivery {
    if (_value.dataDelivery == null) {
      return null;
    }

    return $DeliveryInfoCopyWith<$Res>(_value.dataDelivery!, (value) {
      return _then(_value.copyWith(dataDelivery: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CollectionInfoCopyWith<$Res>? get dataCollection {
    if (_value.dataCollection == null) {
      return null;
    }

    return $CollectionInfoCopyWith<$Res>(_value.dataCollection!, (value) {
      return _then(_value.copyWith(dataCollection: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MasterCollectCopyWith<$Res>
    implements $MasterCollectCopyWith<$Res> {
  factory _$$_MasterCollectCopyWith(
          _$_MasterCollect value, $Res Function(_$_MasterCollect) then) =
      __$$_MasterCollectCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? toko,
      DeliveryInfo? dataDelivery,
      CollectionInfo? dataCollection});

  @override
  $DeliveryInfoCopyWith<$Res>? get dataDelivery;
  @override
  $CollectionInfoCopyWith<$Res>? get dataCollection;
}

/// @nodoc
class __$$_MasterCollectCopyWithImpl<$Res>
    extends _$MasterCollectCopyWithImpl<$Res, _$_MasterCollect>
    implements _$$_MasterCollectCopyWith<$Res> {
  __$$_MasterCollectCopyWithImpl(
      _$_MasterCollect _value, $Res Function(_$_MasterCollect) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toko = freezed,
    Object? dataDelivery = freezed,
    Object? dataCollection = freezed,
  }) {
    return _then(_$_MasterCollect(
      toko: freezed == toko
          ? _value.toko
          : toko // ignore: cast_nullable_to_non_nullable
              as String?,
      dataDelivery: freezed == dataDelivery
          ? _value.dataDelivery
          : dataDelivery // ignore: cast_nullable_to_non_nullable
              as DeliveryInfo?,
      dataCollection: freezed == dataCollection
          ? _value.dataCollection
          : dataCollection // ignore: cast_nullable_to_non_nullable
              as CollectionInfo?,
    ));
  }
}

/// @nodoc

class _$_MasterCollect extends _MasterCollect {
  const _$_MasterCollect({this.toko, this.dataDelivery, this.dataCollection})
      : super._();

  @override
  final String? toko;
  @override
  final DeliveryInfo? dataDelivery;
  @override
  final CollectionInfo? dataCollection;

  @override
  String toString() {
    return 'MasterCollect(toko: $toko, dataDelivery: $dataDelivery, dataCollection: $dataCollection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MasterCollect &&
            (identical(other.toko, toko) || other.toko == toko) &&
            (identical(other.dataDelivery, dataDelivery) ||
                other.dataDelivery == dataDelivery) &&
            (identical(other.dataCollection, dataCollection) ||
                other.dataCollection == dataCollection));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, toko, dataDelivery, dataCollection);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MasterCollectCopyWith<_$_MasterCollect> get copyWith =>
      __$$_MasterCollectCopyWithImpl<_$_MasterCollect>(this, _$identity);
}

abstract class _MasterCollect extends MasterCollect {
  const factory _MasterCollect(
      {final String? toko,
      final DeliveryInfo? dataDelivery,
      final CollectionInfo? dataCollection}) = _$_MasterCollect;
  const _MasterCollect._() : super._();

  @override
  String? get toko;
  @override
  DeliveryInfo? get dataDelivery;
  @override
  CollectionInfo? get dataCollection;
  @override
  @JsonKey(ignore: true)
  _$$_MasterCollectCopyWith<_$_MasterCollect> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CollectionInfo {
  List<String>? get listKodel => throw _privateConstructorUsedError;
  List<DateTime>? get tanggalSales => throw _privateConstructorUsedError;
  List<String>? get shift => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CollectionInfoCopyWith<CollectionInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionInfoCopyWith<$Res> {
  factory $CollectionInfoCopyWith(
          CollectionInfo value, $Res Function(CollectionInfo) then) =
      _$CollectionInfoCopyWithImpl<$Res, CollectionInfo>;
  @useResult
  $Res call(
      {List<String>? listKodel,
      List<DateTime>? tanggalSales,
      List<String>? shift});
}

/// @nodoc
class _$CollectionInfoCopyWithImpl<$Res, $Val extends CollectionInfo>
    implements $CollectionInfoCopyWith<$Res> {
  _$CollectionInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listKodel = freezed,
    Object? tanggalSales = freezed,
    Object? shift = freezed,
  }) {
    return _then(_value.copyWith(
      listKodel: freezed == listKodel
          ? _value.listKodel
          : listKodel // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      tanggalSales: freezed == tanggalSales
          ? _value.tanggalSales
          : tanggalSales // ignore: cast_nullable_to_non_nullable
              as List<DateTime>?,
      shift: freezed == shift
          ? _value.shift
          : shift // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CollectionInfoCopyWith<$Res>
    implements $CollectionInfoCopyWith<$Res> {
  factory _$$_CollectionInfoCopyWith(
          _$_CollectionInfo value, $Res Function(_$_CollectionInfo) then) =
      __$$_CollectionInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String>? listKodel,
      List<DateTime>? tanggalSales,
      List<String>? shift});
}

/// @nodoc
class __$$_CollectionInfoCopyWithImpl<$Res>
    extends _$CollectionInfoCopyWithImpl<$Res, _$_CollectionInfo>
    implements _$$_CollectionInfoCopyWith<$Res> {
  __$$_CollectionInfoCopyWithImpl(
      _$_CollectionInfo _value, $Res Function(_$_CollectionInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listKodel = freezed,
    Object? tanggalSales = freezed,
    Object? shift = freezed,
  }) {
    return _then(_$_CollectionInfo(
      listKodel: freezed == listKodel
          ? _value._listKodel
          : listKodel // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      tanggalSales: freezed == tanggalSales
          ? _value._tanggalSales
          : tanggalSales // ignore: cast_nullable_to_non_nullable
              as List<DateTime>?,
      shift: freezed == shift
          ? _value._shift
          : shift // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

class _$_CollectionInfo extends _CollectionInfo {
  const _$_CollectionInfo(
      {final List<String>? listKodel,
      final List<DateTime>? tanggalSales,
      final List<String>? shift})
      : _listKodel = listKodel,
        _tanggalSales = tanggalSales,
        _shift = shift,
        super._();

  final List<String>? _listKodel;
  @override
  List<String>? get listKodel {
    final value = _listKodel;
    if (value == null) return null;
    if (_listKodel is EqualUnmodifiableListView) return _listKodel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<DateTime>? _tanggalSales;
  @override
  List<DateTime>? get tanggalSales {
    final value = _tanggalSales;
    if (value == null) return null;
    if (_tanggalSales is EqualUnmodifiableListView) return _tanggalSales;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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
    return 'CollectionInfo(listKodel: $listKodel, tanggalSales: $tanggalSales, shift: $shift)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CollectionInfo &&
            const DeepCollectionEquality()
                .equals(other._listKodel, _listKodel) &&
            const DeepCollectionEquality()
                .equals(other._tanggalSales, _tanggalSales) &&
            const DeepCollectionEquality().equals(other._shift, _shift));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_listKodel),
      const DeepCollectionEquality().hash(_tanggalSales),
      const DeepCollectionEquality().hash(_shift));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CollectionInfoCopyWith<_$_CollectionInfo> get copyWith =>
      __$$_CollectionInfoCopyWithImpl<_$_CollectionInfo>(this, _$identity);
}

abstract class _CollectionInfo extends CollectionInfo {
  const factory _CollectionInfo(
      {final List<String>? listKodel,
      final List<DateTime>? tanggalSales,
      final List<String>? shift}) = _$_CollectionInfo;
  const _CollectionInfo._() : super._();

  @override
  List<String>? get listKodel;
  @override
  List<DateTime>? get tanggalSales;
  @override
  List<String>? get shift;
  @override
  @JsonKey(ignore: true)
  _$$_CollectionInfoCopyWith<_$_CollectionInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DeliveryInfo {
  String? get driver => throw _privateConstructorUsedError;
  String? get nopolMobil => throw _privateConstructorUsedError;
  DateTime? get estimasiKedatangan => throw _privateConstructorUsedError;

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
  $Res call({String? driver, String? nopolMobil, DateTime? estimasiKedatangan});
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
    Object? driver = freezed,
    Object? nopolMobil = freezed,
    Object? estimasiKedatangan = freezed,
  }) {
    return _then(_value.copyWith(
      driver: freezed == driver
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as String?,
      nopolMobil: freezed == nopolMobil
          ? _value.nopolMobil
          : nopolMobil // ignore: cast_nullable_to_non_nullable
              as String?,
      estimasiKedatangan: freezed == estimasiKedatangan
          ? _value.estimasiKedatangan
          : estimasiKedatangan // ignore: cast_nullable_to_non_nullable
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
  $Res call({String? driver, String? nopolMobil, DateTime? estimasiKedatangan});
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
    Object? driver = freezed,
    Object? nopolMobil = freezed,
    Object? estimasiKedatangan = freezed,
  }) {
    return _then(_$_DeliveryInfo(
      driver: freezed == driver
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as String?,
      nopolMobil: freezed == nopolMobil
          ? _value.nopolMobil
          : nopolMobil // ignore: cast_nullable_to_non_nullable
              as String?,
      estimasiKedatangan: freezed == estimasiKedatangan
          ? _value.estimasiKedatangan
          : estimasiKedatangan // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_DeliveryInfo extends _DeliveryInfo {
  const _$_DeliveryInfo({this.driver, this.nopolMobil, this.estimasiKedatangan})
      : super._();

  @override
  final String? driver;
  @override
  final String? nopolMobil;
  @override
  final DateTime? estimasiKedatangan;

  @override
  String toString() {
    return 'DeliveryInfo(driver: $driver, nopolMobil: $nopolMobil, estimasiKedatangan: $estimasiKedatangan)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeliveryInfo &&
            (identical(other.driver, driver) || other.driver == driver) &&
            (identical(other.nopolMobil, nopolMobil) ||
                other.nopolMobil == nopolMobil) &&
            (identical(other.estimasiKedatangan, estimasiKedatangan) ||
                other.estimasiKedatangan == estimasiKedatangan));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, driver, nopolMobil, estimasiKedatangan);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeliveryInfoCopyWith<_$_DeliveryInfo> get copyWith =>
      __$$_DeliveryInfoCopyWithImpl<_$_DeliveryInfo>(this, _$identity);
}

abstract class _DeliveryInfo extends DeliveryInfo {
  const factory _DeliveryInfo(
      {final String? driver,
      final String? nopolMobil,
      final DateTime? estimasiKedatangan}) = _$_DeliveryInfo;
  const _DeliveryInfo._() : super._();

  @override
  String? get driver;
  @override
  String? get nopolMobil;
  @override
  DateTime? get estimasiKedatangan;
  @override
  @JsonKey(ignore: true)
  _$$_DeliveryInfoCopyWith<_$_DeliveryInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
