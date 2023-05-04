// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tracking.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Tracking {
  List<DataTracking>? get listTracking => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TrackingCopyWith<Tracking> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackingCopyWith<$Res> {
  factory $TrackingCopyWith(Tracking value, $Res Function(Tracking) then) =
      _$TrackingCopyWithImpl<$Res, Tracking>;
  @useResult
  $Res call({List<DataTracking>? listTracking});
}

/// @nodoc
class _$TrackingCopyWithImpl<$Res, $Val extends Tracking>
    implements $TrackingCopyWith<$Res> {
  _$TrackingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listTracking = freezed,
  }) {
    return _then(_value.copyWith(
      listTracking: freezed == listTracking
          ? _value.listTracking
          : listTracking // ignore: cast_nullable_to_non_nullable
              as List<DataTracking>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TrackingCopyWith<$Res> implements $TrackingCopyWith<$Res> {
  factory _$$_TrackingCopyWith(
          _$_Tracking value, $Res Function(_$_Tracking) then) =
      __$$_TrackingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DataTracking>? listTracking});
}

/// @nodoc
class __$$_TrackingCopyWithImpl<$Res>
    extends _$TrackingCopyWithImpl<$Res, _$_Tracking>
    implements _$$_TrackingCopyWith<$Res> {
  __$$_TrackingCopyWithImpl(
      _$_Tracking _value, $Res Function(_$_Tracking) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listTracking = freezed,
  }) {
    return _then(_$_Tracking(
      listTracking: freezed == listTracking
          ? _value._listTracking
          : listTracking // ignore: cast_nullable_to_non_nullable
              as List<DataTracking>?,
    ));
  }
}

/// @nodoc

class _$_Tracking extends _Tracking {
  const _$_Tracking({final List<DataTracking>? listTracking})
      : _listTracking = listTracking,
        super._();

  final List<DataTracking>? _listTracking;
  @override
  List<DataTracking>? get listTracking {
    final value = _listTracking;
    if (value == null) return null;
    if (_listTracking is EqualUnmodifiableListView) return _listTracking;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Tracking(listTracking: $listTracking)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Tracking &&
            const DeepCollectionEquality()
                .equals(other._listTracking, _listTracking));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_listTracking));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TrackingCopyWith<_$_Tracking> get copyWith =>
      __$$_TrackingCopyWithImpl<_$_Tracking>(this, _$identity);
}

abstract class _Tracking extends Tracking {
  const factory _Tracking({final List<DataTracking>? listTracking}) =
      _$_Tracking;
  const _Tracking._() : super._();

  @override
  List<DataTracking>? get listTracking;
  @override
  @JsonKey(ignore: true)
  _$$_TrackingCopyWith<_$_Tracking> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DataTracking {
  String? get type => throw _privateConstructorUsedError;
  String? get delivery => throw _privateConstructorUsedError;
  String? get idDelivery => throw _privateConstructorUsedError;
  DateTime? get tglPosting => throw _privateConstructorUsedError;
  int? get lampiran => throw _privateConstructorUsedError;
  TrackingStatus? get status => throw _privateConstructorUsedError;
  DateTime? get updateAt => throw _privateConstructorUsedError;
  List<SalesDetail>? get salesDetail => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DataTrackingCopyWith<DataTracking> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataTrackingCopyWith<$Res> {
  factory $DataTrackingCopyWith(
          DataTracking value, $Res Function(DataTracking) then) =
      _$DataTrackingCopyWithImpl<$Res, DataTracking>;
  @useResult
  $Res call(
      {String? type,
      String? delivery,
      String? idDelivery,
      DateTime? tglPosting,
      int? lampiran,
      TrackingStatus? status,
      DateTime? updateAt,
      List<SalesDetail>? salesDetail});
}

/// @nodoc
class _$DataTrackingCopyWithImpl<$Res, $Val extends DataTracking>
    implements $DataTrackingCopyWith<$Res> {
  _$DataTrackingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? delivery = freezed,
    Object? idDelivery = freezed,
    Object? tglPosting = freezed,
    Object? lampiran = freezed,
    Object? status = freezed,
    Object? updateAt = freezed,
    Object? salesDetail = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      delivery: freezed == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as String?,
      idDelivery: freezed == idDelivery
          ? _value.idDelivery
          : idDelivery // ignore: cast_nullable_to_non_nullable
              as String?,
      tglPosting: freezed == tglPosting
          ? _value.tglPosting
          : tglPosting // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lampiran: freezed == lampiran
          ? _value.lampiran
          : lampiran // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TrackingStatus?,
      updateAt: freezed == updateAt
          ? _value.updateAt
          : updateAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      salesDetail: freezed == salesDetail
          ? _value.salesDetail
          : salesDetail // ignore: cast_nullable_to_non_nullable
              as List<SalesDetail>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataTrackingCopyWith<$Res>
    implements $DataTrackingCopyWith<$Res> {
  factory _$$_DataTrackingCopyWith(
          _$_DataTracking value, $Res Function(_$_DataTracking) then) =
      __$$_DataTrackingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? type,
      String? delivery,
      String? idDelivery,
      DateTime? tglPosting,
      int? lampiran,
      TrackingStatus? status,
      DateTime? updateAt,
      List<SalesDetail>? salesDetail});
}

/// @nodoc
class __$$_DataTrackingCopyWithImpl<$Res>
    extends _$DataTrackingCopyWithImpl<$Res, _$_DataTracking>
    implements _$$_DataTrackingCopyWith<$Res> {
  __$$_DataTrackingCopyWithImpl(
      _$_DataTracking _value, $Res Function(_$_DataTracking) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? delivery = freezed,
    Object? idDelivery = freezed,
    Object? tglPosting = freezed,
    Object? lampiran = freezed,
    Object? status = freezed,
    Object? updateAt = freezed,
    Object? salesDetail = freezed,
  }) {
    return _then(_$_DataTracking(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      delivery: freezed == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as String?,
      idDelivery: freezed == idDelivery
          ? _value.idDelivery
          : idDelivery // ignore: cast_nullable_to_non_nullable
              as String?,
      tglPosting: freezed == tglPosting
          ? _value.tglPosting
          : tglPosting // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lampiran: freezed == lampiran
          ? _value.lampiran
          : lampiran // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TrackingStatus?,
      updateAt: freezed == updateAt
          ? _value.updateAt
          : updateAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      salesDetail: freezed == salesDetail
          ? _value._salesDetail
          : salesDetail // ignore: cast_nullable_to_non_nullable
              as List<SalesDetail>?,
    ));
  }
}

/// @nodoc

class _$_DataTracking extends _DataTracking {
  const _$_DataTracking(
      {this.type,
      this.delivery,
      this.idDelivery,
      this.tglPosting,
      this.lampiran,
      this.status,
      this.updateAt,
      final List<SalesDetail>? salesDetail})
      : _salesDetail = salesDetail,
        super._();

  @override
  final String? type;
  @override
  final String? delivery;
  @override
  final String? idDelivery;
  @override
  final DateTime? tglPosting;
  @override
  final int? lampiran;
  @override
  final TrackingStatus? status;
  @override
  final DateTime? updateAt;
  final List<SalesDetail>? _salesDetail;
  @override
  List<SalesDetail>? get salesDetail {
    final value = _salesDetail;
    if (value == null) return null;
    if (_salesDetail is EqualUnmodifiableListView) return _salesDetail;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DataTracking(type: $type, delivery: $delivery, idDelivery: $idDelivery, tglPosting: $tglPosting, lampiran: $lampiran, status: $status, updateAt: $updateAt, salesDetail: $salesDetail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataTracking &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.delivery, delivery) ||
                other.delivery == delivery) &&
            (identical(other.idDelivery, idDelivery) ||
                other.idDelivery == idDelivery) &&
            (identical(other.tglPosting, tglPosting) ||
                other.tglPosting == tglPosting) &&
            (identical(other.lampiran, lampiran) ||
                other.lampiran == lampiran) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.updateAt, updateAt) ||
                other.updateAt == updateAt) &&
            const DeepCollectionEquality()
                .equals(other._salesDetail, _salesDetail));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      type,
      delivery,
      idDelivery,
      tglPosting,
      lampiran,
      status,
      updateAt,
      const DeepCollectionEquality().hash(_salesDetail));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataTrackingCopyWith<_$_DataTracking> get copyWith =>
      __$$_DataTrackingCopyWithImpl<_$_DataTracking>(this, _$identity);
}

abstract class _DataTracking extends DataTracking {
  const factory _DataTracking(
      {final String? type,
      final String? delivery,
      final String? idDelivery,
      final DateTime? tglPosting,
      final int? lampiran,
      final TrackingStatus? status,
      final DateTime? updateAt,
      final List<SalesDetail>? salesDetail}) = _$_DataTracking;
  const _DataTracking._() : super._();

  @override
  String? get type;
  @override
  String? get delivery;
  @override
  String? get idDelivery;
  @override
  DateTime? get tglPosting;
  @override
  int? get lampiran;
  @override
  TrackingStatus? get status;
  @override
  DateTime? get updateAt;
  @override
  List<SalesDetail>? get salesDetail;
  @override
  @JsonKey(ignore: true)
  _$$_DataTrackingCopyWith<_$_DataTracking> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SalesDetail {
  DateTime? get tanggal => throw _privateConstructorUsedError;
  int? get lampiran => throw _privateConstructorUsedError;
  int? get nominal => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SalesDetailCopyWith<SalesDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesDetailCopyWith<$Res> {
  factory $SalesDetailCopyWith(
          SalesDetail value, $Res Function(SalesDetail) then) =
      _$SalesDetailCopyWithImpl<$Res, SalesDetail>;
  @useResult
  $Res call({DateTime? tanggal, int? lampiran, int? nominal});
}

/// @nodoc
class _$SalesDetailCopyWithImpl<$Res, $Val extends SalesDetail>
    implements $SalesDetailCopyWith<$Res> {
  _$SalesDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tanggal = freezed,
    Object? lampiran = freezed,
    Object? nominal = freezed,
  }) {
    return _then(_value.copyWith(
      tanggal: freezed == tanggal
          ? _value.tanggal
          : tanggal // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lampiran: freezed == lampiran
          ? _value.lampiran
          : lampiran // ignore: cast_nullable_to_non_nullable
              as int?,
      nominal: freezed == nominal
          ? _value.nominal
          : nominal // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SalesDetailCopyWith<$Res>
    implements $SalesDetailCopyWith<$Res> {
  factory _$$_SalesDetailCopyWith(
          _$_SalesDetail value, $Res Function(_$_SalesDetail) then) =
      __$$_SalesDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime? tanggal, int? lampiran, int? nominal});
}

/// @nodoc
class __$$_SalesDetailCopyWithImpl<$Res>
    extends _$SalesDetailCopyWithImpl<$Res, _$_SalesDetail>
    implements _$$_SalesDetailCopyWith<$Res> {
  __$$_SalesDetailCopyWithImpl(
      _$_SalesDetail _value, $Res Function(_$_SalesDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tanggal = freezed,
    Object? lampiran = freezed,
    Object? nominal = freezed,
  }) {
    return _then(_$_SalesDetail(
      tanggal: freezed == tanggal
          ? _value.tanggal
          : tanggal // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lampiran: freezed == lampiran
          ? _value.lampiran
          : lampiran // ignore: cast_nullable_to_non_nullable
              as int?,
      nominal: freezed == nominal
          ? _value.nominal
          : nominal // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_SalesDetail extends _SalesDetail {
  const _$_SalesDetail({this.tanggal, this.lampiran, this.nominal}) : super._();

  @override
  final DateTime? tanggal;
  @override
  final int? lampiran;
  @override
  final int? nominal;

  @override
  String toString() {
    return 'SalesDetail(tanggal: $tanggal, lampiran: $lampiran, nominal: $nominal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SalesDetail &&
            (identical(other.tanggal, tanggal) || other.tanggal == tanggal) &&
            (identical(other.lampiran, lampiran) ||
                other.lampiran == lampiran) &&
            (identical(other.nominal, nominal) || other.nominal == nominal));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tanggal, lampiran, nominal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SalesDetailCopyWith<_$_SalesDetail> get copyWith =>
      __$$_SalesDetailCopyWithImpl<_$_SalesDetail>(this, _$identity);
}

abstract class _SalesDetail extends SalesDetail {
  const factory _SalesDetail(
      {final DateTime? tanggal,
      final int? lampiran,
      final int? nominal}) = _$_SalesDetail;
  const _SalesDetail._() : super._();

  @override
  DateTime? get tanggal;
  @override
  int? get lampiran;
  @override
  int? get nominal;
  @override
  @JsonKey(ignore: true)
  _$$_SalesDetailCopyWith<_$_SalesDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
