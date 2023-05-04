// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_tracking.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetailTracking {
  String? get idDelivery => throw _privateConstructorUsedError;
  List<DetailLampiran>? get detailLampiran =>
      throw _privateConstructorUsedError;
  List<DetailDataTracking>? get detailTracking =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailTrackingCopyWith<DetailTracking> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailTrackingCopyWith<$Res> {
  factory $DetailTrackingCopyWith(
          DetailTracking value, $Res Function(DetailTracking) then) =
      _$DetailTrackingCopyWithImpl<$Res, DetailTracking>;
  @useResult
  $Res call(
      {String? idDelivery,
      List<DetailLampiran>? detailLampiran,
      List<DetailDataTracking>? detailTracking});
}

/// @nodoc
class _$DetailTrackingCopyWithImpl<$Res, $Val extends DetailTracking>
    implements $DetailTrackingCopyWith<$Res> {
  _$DetailTrackingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idDelivery = freezed,
    Object? detailLampiran = freezed,
    Object? detailTracking = freezed,
  }) {
    return _then(_value.copyWith(
      idDelivery: freezed == idDelivery
          ? _value.idDelivery
          : idDelivery // ignore: cast_nullable_to_non_nullable
              as String?,
      detailLampiran: freezed == detailLampiran
          ? _value.detailLampiran
          : detailLampiran // ignore: cast_nullable_to_non_nullable
              as List<DetailLampiran>?,
      detailTracking: freezed == detailTracking
          ? _value.detailTracking
          : detailTracking // ignore: cast_nullable_to_non_nullable
              as List<DetailDataTracking>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DetailTrackingCopyWith<$Res>
    implements $DetailTrackingCopyWith<$Res> {
  factory _$$_DetailTrackingCopyWith(
          _$_DetailTracking value, $Res Function(_$_DetailTracking) then) =
      __$$_DetailTrackingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? idDelivery,
      List<DetailLampiran>? detailLampiran,
      List<DetailDataTracking>? detailTracking});
}

/// @nodoc
class __$$_DetailTrackingCopyWithImpl<$Res>
    extends _$DetailTrackingCopyWithImpl<$Res, _$_DetailTracking>
    implements _$$_DetailTrackingCopyWith<$Res> {
  __$$_DetailTrackingCopyWithImpl(
      _$_DetailTracking _value, $Res Function(_$_DetailTracking) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idDelivery = freezed,
    Object? detailLampiran = freezed,
    Object? detailTracking = freezed,
  }) {
    return _then(_$_DetailTracking(
      idDelivery: freezed == idDelivery
          ? _value.idDelivery
          : idDelivery // ignore: cast_nullable_to_non_nullable
              as String?,
      detailLampiran: freezed == detailLampiran
          ? _value._detailLampiran
          : detailLampiran // ignore: cast_nullable_to_non_nullable
              as List<DetailLampiran>?,
      detailTracking: freezed == detailTracking
          ? _value._detailTracking
          : detailTracking // ignore: cast_nullable_to_non_nullable
              as List<DetailDataTracking>?,
    ));
  }
}

/// @nodoc

class _$_DetailTracking implements _DetailTracking {
  const _$_DetailTracking(
      {this.idDelivery,
      final List<DetailLampiran>? detailLampiran,
      final List<DetailDataTracking>? detailTracking})
      : _detailLampiran = detailLampiran,
        _detailTracking = detailTracking;

  @override
  final String? idDelivery;
  final List<DetailLampiran>? _detailLampiran;
  @override
  List<DetailLampiran>? get detailLampiran {
    final value = _detailLampiran;
    if (value == null) return null;
    if (_detailLampiran is EqualUnmodifiableListView) return _detailLampiran;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<DetailDataTracking>? _detailTracking;
  @override
  List<DetailDataTracking>? get detailTracking {
    final value = _detailTracking;
    if (value == null) return null;
    if (_detailTracking is EqualUnmodifiableListView) return _detailTracking;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DetailTracking(idDelivery: $idDelivery, detailLampiran: $detailLampiran, detailTracking: $detailTracking)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailTracking &&
            (identical(other.idDelivery, idDelivery) ||
                other.idDelivery == idDelivery) &&
            const DeepCollectionEquality()
                .equals(other._detailLampiran, _detailLampiran) &&
            const DeepCollectionEquality()
                .equals(other._detailTracking, _detailTracking));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      idDelivery,
      const DeepCollectionEquality().hash(_detailLampiran),
      const DeepCollectionEquality().hash(_detailTracking));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailTrackingCopyWith<_$_DetailTracking> get copyWith =>
      __$$_DetailTrackingCopyWithImpl<_$_DetailTracking>(this, _$identity);
}

abstract class _DetailTracking implements DetailTracking {
  const factory _DetailTracking(
      {final String? idDelivery,
      final List<DetailLampiran>? detailLampiran,
      final List<DetailDataTracking>? detailTracking}) = _$_DetailTracking;

  @override
  String? get idDelivery;
  @override
  List<DetailLampiran>? get detailLampiran;
  @override
  List<DetailDataTracking>? get detailTracking;
  @override
  @JsonKey(ignore: true)
  _$$_DetailTrackingCopyWith<_$_DetailTracking> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DetailLampiran {
  String? get label => throw _privateConstructorUsedError;
  int? get nominal => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailLampiranCopyWith<DetailLampiran> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailLampiranCopyWith<$Res> {
  factory $DetailLampiranCopyWith(
          DetailLampiran value, $Res Function(DetailLampiran) then) =
      _$DetailLampiranCopyWithImpl<$Res, DetailLampiran>;
  @useResult
  $Res call({String? label, int? nominal, String? imageUrl});
}

/// @nodoc
class _$DetailLampiranCopyWithImpl<$Res, $Val extends DetailLampiran>
    implements $DetailLampiranCopyWith<$Res> {
  _$DetailLampiranCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = freezed,
    Object? nominal = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      nominal: freezed == nominal
          ? _value.nominal
          : nominal // ignore: cast_nullable_to_non_nullable
              as int?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DetailLampiranCopyWith<$Res>
    implements $DetailLampiranCopyWith<$Res> {
  factory _$$_DetailLampiranCopyWith(
          _$_DetailLampiran value, $Res Function(_$_DetailLampiran) then) =
      __$$_DetailLampiranCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? label, int? nominal, String? imageUrl});
}

/// @nodoc
class __$$_DetailLampiranCopyWithImpl<$Res>
    extends _$DetailLampiranCopyWithImpl<$Res, _$_DetailLampiran>
    implements _$$_DetailLampiranCopyWith<$Res> {
  __$$_DetailLampiranCopyWithImpl(
      _$_DetailLampiran _value, $Res Function(_$_DetailLampiran) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = freezed,
    Object? nominal = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_$_DetailLampiran(
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      nominal: freezed == nominal
          ? _value.nominal
          : nominal // ignore: cast_nullable_to_non_nullable
              as int?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_DetailLampiran extends _DetailLampiran {
  const _$_DetailLampiran({this.label, this.nominal, this.imageUrl})
      : super._();

  @override
  final String? label;
  @override
  final int? nominal;
  @override
  final String? imageUrl;

  @override
  String toString() {
    return 'DetailLampiran(label: $label, nominal: $nominal, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailLampiran &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.nominal, nominal) || other.nominal == nominal) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, label, nominal, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailLampiranCopyWith<_$_DetailLampiran> get copyWith =>
      __$$_DetailLampiranCopyWithImpl<_$_DetailLampiran>(this, _$identity);
}

abstract class _DetailLampiran extends DetailLampiran {
  const factory _DetailLampiran(
      {final String? label,
      final int? nominal,
      final String? imageUrl}) = _$_DetailLampiran;
  const _DetailLampiran._() : super._();

  @override
  String? get label;
  @override
  int? get nominal;
  @override
  String? get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_DetailLampiranCopyWith<_$_DetailLampiran> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DetailDataTracking {
  TrackingStatus? get status => throw _privateConstructorUsedError;
  String? get keterangan => throw _privateConstructorUsedError;
  String? get pic => throw _privateConstructorUsedError;
  DateTime? get updateAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailDataTrackingCopyWith<DetailDataTracking> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailDataTrackingCopyWith<$Res> {
  factory $DetailDataTrackingCopyWith(
          DetailDataTracking value, $Res Function(DetailDataTracking) then) =
      _$DetailDataTrackingCopyWithImpl<$Res, DetailDataTracking>;
  @useResult
  $Res call(
      {TrackingStatus? status,
      String? keterangan,
      String? pic,
      DateTime? updateAt});
}

/// @nodoc
class _$DetailDataTrackingCopyWithImpl<$Res, $Val extends DetailDataTracking>
    implements $DetailDataTrackingCopyWith<$Res> {
  _$DetailDataTrackingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? keterangan = freezed,
    Object? pic = freezed,
    Object? updateAt = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TrackingStatus?,
      keterangan: freezed == keterangan
          ? _value.keterangan
          : keterangan // ignore: cast_nullable_to_non_nullable
              as String?,
      pic: freezed == pic
          ? _value.pic
          : pic // ignore: cast_nullable_to_non_nullable
              as String?,
      updateAt: freezed == updateAt
          ? _value.updateAt
          : updateAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DetailDataTrackingCopyWith<$Res>
    implements $DetailDataTrackingCopyWith<$Res> {
  factory _$$_DetailDataTrackingCopyWith(_$_DetailDataTracking value,
          $Res Function(_$_DetailDataTracking) then) =
      __$$_DetailDataTrackingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TrackingStatus? status,
      String? keterangan,
      String? pic,
      DateTime? updateAt});
}

/// @nodoc
class __$$_DetailDataTrackingCopyWithImpl<$Res>
    extends _$DetailDataTrackingCopyWithImpl<$Res, _$_DetailDataTracking>
    implements _$$_DetailDataTrackingCopyWith<$Res> {
  __$$_DetailDataTrackingCopyWithImpl(
      _$_DetailDataTracking _value, $Res Function(_$_DetailDataTracking) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? keterangan = freezed,
    Object? pic = freezed,
    Object? updateAt = freezed,
  }) {
    return _then(_$_DetailDataTracking(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TrackingStatus?,
      keterangan: freezed == keterangan
          ? _value.keterangan
          : keterangan // ignore: cast_nullable_to_non_nullable
              as String?,
      pic: freezed == pic
          ? _value.pic
          : pic // ignore: cast_nullable_to_non_nullable
              as String?,
      updateAt: freezed == updateAt
          ? _value.updateAt
          : updateAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_DetailDataTracking extends _DetailDataTracking {
  const _$_DetailDataTracking(
      {this.status, this.keterangan, this.pic, this.updateAt})
      : super._();

  @override
  final TrackingStatus? status;
  @override
  final String? keterangan;
  @override
  final String? pic;
  @override
  final DateTime? updateAt;

  @override
  String toString() {
    return 'DetailDataTracking(status: $status, keterangan: $keterangan, pic: $pic, updateAt: $updateAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailDataTracking &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.keterangan, keterangan) ||
                other.keterangan == keterangan) &&
            (identical(other.pic, pic) || other.pic == pic) &&
            (identical(other.updateAt, updateAt) ||
                other.updateAt == updateAt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, keterangan, pic, updateAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailDataTrackingCopyWith<_$_DetailDataTracking> get copyWith =>
      __$$_DetailDataTrackingCopyWithImpl<_$_DetailDataTracking>(
          this, _$identity);
}

abstract class _DetailDataTracking extends DetailDataTracking {
  const factory _DetailDataTracking(
      {final TrackingStatus? status,
      final String? keterangan,
      final String? pic,
      final DateTime? updateAt}) = _$_DetailDataTracking;
  const _DetailDataTracking._() : super._();

  @override
  TrackingStatus? get status;
  @override
  String? get keterangan;
  @override
  String? get pic;
  @override
  DateTime? get updateAt;
  @override
  @JsonKey(ignore: true)
  _$$_DetailDataTrackingCopyWith<_$_DetailDataTracking> get copyWith =>
      throw _privateConstructorUsedError;
}
