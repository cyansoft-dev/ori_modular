// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_collection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ListDataCollection {
  List<DataCollection>? get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListDataCollectionCopyWith<ListDataCollection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListDataCollectionCopyWith<$Res> {
  factory $ListDataCollectionCopyWith(
          ListDataCollection value, $Res Function(ListDataCollection) then) =
      _$ListDataCollectionCopyWithImpl<$Res, ListDataCollection>;
  @useResult
  $Res call({List<DataCollection>? data});
}

/// @nodoc
class _$ListDataCollectionCopyWithImpl<$Res, $Val extends ListDataCollection>
    implements $ListDataCollectionCopyWith<$Res> {
  _$ListDataCollectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataCollection>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ListDataCollectionCopyWith<$Res>
    implements $ListDataCollectionCopyWith<$Res> {
  factory _$$_ListDataCollectionCopyWith(_$_ListDataCollection value,
          $Res Function(_$_ListDataCollection) then) =
      __$$_ListDataCollectionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DataCollection>? data});
}

/// @nodoc
class __$$_ListDataCollectionCopyWithImpl<$Res>
    extends _$ListDataCollectionCopyWithImpl<$Res, _$_ListDataCollection>
    implements _$$_ListDataCollectionCopyWith<$Res> {
  __$$_ListDataCollectionCopyWithImpl(
      _$_ListDataCollection _value, $Res Function(_$_ListDataCollection) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_ListDataCollection(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataCollection>?,
    ));
  }
}

/// @nodoc

class _$_ListDataCollection extends _ListDataCollection {
  const _$_ListDataCollection({final List<DataCollection>? data})
      : _data = data,
        super._();

  final List<DataCollection>? _data;
  @override
  List<DataCollection>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ListDataCollection(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListDataCollection &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListDataCollectionCopyWith<_$_ListDataCollection> get copyWith =>
      __$$_ListDataCollectionCopyWithImpl<_$_ListDataCollection>(
          this, _$identity);
}

abstract class _ListDataCollection extends ListDataCollection {
  const factory _ListDataCollection({final List<DataCollection>? data}) =
      _$_ListDataCollection;
  const _ListDataCollection._() : super._();

  @override
  List<DataCollection>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_ListDataCollectionCopyWith<_$_ListDataCollection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DataCollection {
  int? get id => throw _privateConstructorUsedError;
  String? get kdtk => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get delivery => throw _privateConstructorUsedError;
  String? get idDelivery => throw _privateConstructorUsedError;
  DateTime? get tanggal => throw _privateConstructorUsedError;
  String? get shift => throw _privateConstructorUsedError;
  int? get jumlDetail => throw _privateConstructorUsedError;
  List<DetailTransaction>? get details => throw _privateConstructorUsedError;
  List<SummaryTransaction>? get summary => throw _privateConstructorUsedError;
  String? get pathImage => throw _privateConstructorUsedError;
  TransactionStatus get status => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DataCollectionCopyWith<DataCollection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCollectionCopyWith<$Res> {
  factory $DataCollectionCopyWith(
          DataCollection value, $Res Function(DataCollection) then) =
      _$DataCollectionCopyWithImpl<$Res, DataCollection>;
  @useResult
  $Res call(
      {int? id,
      String? kdtk,
      String? type,
      String? delivery,
      String? idDelivery,
      DateTime? tanggal,
      String? shift,
      int? jumlDetail,
      List<DetailTransaction>? details,
      List<SummaryTransaction>? summary,
      String? pathImage,
      TransactionStatus status,
      double? latitude,
      double? longitude});
}

/// @nodoc
class _$DataCollectionCopyWithImpl<$Res, $Val extends DataCollection>
    implements $DataCollectionCopyWith<$Res> {
  _$DataCollectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? kdtk = freezed,
    Object? type = freezed,
    Object? delivery = freezed,
    Object? idDelivery = freezed,
    Object? tanggal = freezed,
    Object? shift = freezed,
    Object? jumlDetail = freezed,
    Object? details = freezed,
    Object? summary = freezed,
    Object? pathImage = freezed,
    Object? status = null,
    Object? latitude = freezed,
    Object? longitude = freezed,
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
      tanggal: freezed == tanggal
          ? _value.tanggal
          : tanggal // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      shift: freezed == shift
          ? _value.shift
          : shift // ignore: cast_nullable_to_non_nullable
              as String?,
      jumlDetail: freezed == jumlDetail
          ? _value.jumlDetail
          : jumlDetail // ignore: cast_nullable_to_non_nullable
              as int?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as List<DetailTransaction>?,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as List<SummaryTransaction>?,
      pathImage: freezed == pathImage
          ? _value.pathImage
          : pathImage // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TransactionStatus,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataCollectionCopyWith<$Res>
    implements $DataCollectionCopyWith<$Res> {
  factory _$$_DataCollectionCopyWith(
          _$_DataCollection value, $Res Function(_$_DataCollection) then) =
      __$$_DataCollectionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? kdtk,
      String? type,
      String? delivery,
      String? idDelivery,
      DateTime? tanggal,
      String? shift,
      int? jumlDetail,
      List<DetailTransaction>? details,
      List<SummaryTransaction>? summary,
      String? pathImage,
      TransactionStatus status,
      double? latitude,
      double? longitude});
}

/// @nodoc
class __$$_DataCollectionCopyWithImpl<$Res>
    extends _$DataCollectionCopyWithImpl<$Res, _$_DataCollection>
    implements _$$_DataCollectionCopyWith<$Res> {
  __$$_DataCollectionCopyWithImpl(
      _$_DataCollection _value, $Res Function(_$_DataCollection) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? kdtk = freezed,
    Object? type = freezed,
    Object? delivery = freezed,
    Object? idDelivery = freezed,
    Object? tanggal = freezed,
    Object? shift = freezed,
    Object? jumlDetail = freezed,
    Object? details = freezed,
    Object? summary = freezed,
    Object? pathImage = freezed,
    Object? status = null,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_$_DataCollection(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      kdtk: freezed == kdtk
          ? _value.kdtk
          : kdtk // ignore: cast_nullable_to_non_nullable
              as String?,
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
      tanggal: freezed == tanggal
          ? _value.tanggal
          : tanggal // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      shift: freezed == shift
          ? _value.shift
          : shift // ignore: cast_nullable_to_non_nullable
              as String?,
      jumlDetail: freezed == jumlDetail
          ? _value.jumlDetail
          : jumlDetail // ignore: cast_nullable_to_non_nullable
              as int?,
      details: freezed == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as List<DetailTransaction>?,
      summary: freezed == summary
          ? _value._summary
          : summary // ignore: cast_nullable_to_non_nullable
              as List<SummaryTransaction>?,
      pathImage: freezed == pathImage
          ? _value.pathImage
          : pathImage // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TransactionStatus,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$_DataCollection extends _DataCollection {
  const _$_DataCollection(
      {this.id,
      this.kdtk,
      this.type,
      this.delivery,
      this.idDelivery,
      this.tanggal,
      this.shift,
      this.jumlDetail,
      final List<DetailTransaction>? details,
      final List<SummaryTransaction>? summary,
      this.pathImage,
      this.status = TransactionStatus.initial,
      this.latitude,
      this.longitude})
      : _details = details,
        _summary = summary,
        super._();

  @override
  final int? id;
  @override
  final String? kdtk;
  @override
  final String? type;
  @override
  final String? delivery;
  @override
  final String? idDelivery;
  @override
  final DateTime? tanggal;
  @override
  final String? shift;
  @override
  final int? jumlDetail;
  final List<DetailTransaction>? _details;
  @override
  List<DetailTransaction>? get details {
    final value = _details;
    if (value == null) return null;
    if (_details is EqualUnmodifiableListView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SummaryTransaction>? _summary;
  @override
  List<SummaryTransaction>? get summary {
    final value = _summary;
    if (value == null) return null;
    if (_summary is EqualUnmodifiableListView) return _summary;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? pathImage;
  @override
  @JsonKey()
  final TransactionStatus status;
  @override
  final double? latitude;
  @override
  final double? longitude;

  @override
  String toString() {
    return 'DataCollection(id: $id, kdtk: $kdtk, type: $type, delivery: $delivery, idDelivery: $idDelivery, tanggal: $tanggal, shift: $shift, jumlDetail: $jumlDetail, details: $details, summary: $summary, pathImage: $pathImage, status: $status, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataCollection &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.kdtk, kdtk) || other.kdtk == kdtk) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.delivery, delivery) ||
                other.delivery == delivery) &&
            (identical(other.idDelivery, idDelivery) ||
                other.idDelivery == idDelivery) &&
            (identical(other.tanggal, tanggal) || other.tanggal == tanggal) &&
            (identical(other.shift, shift) || other.shift == shift) &&
            (identical(other.jumlDetail, jumlDetail) ||
                other.jumlDetail == jumlDetail) &&
            const DeepCollectionEquality().equals(other._details, _details) &&
            const DeepCollectionEquality().equals(other._summary, _summary) &&
            (identical(other.pathImage, pathImage) ||
                other.pathImage == pathImage) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      kdtk,
      type,
      delivery,
      idDelivery,
      tanggal,
      shift,
      jumlDetail,
      const DeepCollectionEquality().hash(_details),
      const DeepCollectionEquality().hash(_summary),
      pathImage,
      status,
      latitude,
      longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataCollectionCopyWith<_$_DataCollection> get copyWith =>
      __$$_DataCollectionCopyWithImpl<_$_DataCollection>(this, _$identity);
}

abstract class _DataCollection extends DataCollection {
  const factory _DataCollection(
      {final int? id,
      final String? kdtk,
      final String? type,
      final String? delivery,
      final String? idDelivery,
      final DateTime? tanggal,
      final String? shift,
      final int? jumlDetail,
      final List<DetailTransaction>? details,
      final List<SummaryTransaction>? summary,
      final String? pathImage,
      final TransactionStatus status,
      final double? latitude,
      final double? longitude}) = _$_DataCollection;
  const _DataCollection._() : super._();

  @override
  int? get id;
  @override
  String? get kdtk;
  @override
  String? get type;
  @override
  String? get delivery;
  @override
  String? get idDelivery;
  @override
  DateTime? get tanggal;
  @override
  String? get shift;
  @override
  int? get jumlDetail;
  @override
  List<DetailTransaction>? get details;
  @override
  List<SummaryTransaction>? get summary;
  @override
  String? get pathImage;
  @override
  TransactionStatus get status;
  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  @JsonKey(ignore: true)
  _$$_DataCollectionCopyWith<_$_DataCollection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DetailTransaction {
  int? get id => throw _privateConstructorUsedError;
  int? get seqno => throw _privateConstructorUsedError;
  double? get nominal => throw _privateConstructorUsedError;
  String? get pathImage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailTransactionCopyWith<DetailTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailTransactionCopyWith<$Res> {
  factory $DetailTransactionCopyWith(
          DetailTransaction value, $Res Function(DetailTransaction) then) =
      _$DetailTransactionCopyWithImpl<$Res, DetailTransaction>;
  @useResult
  $Res call({int? id, int? seqno, double? nominal, String? pathImage});
}

/// @nodoc
class _$DetailTransactionCopyWithImpl<$Res, $Val extends DetailTransaction>
    implements $DetailTransactionCopyWith<$Res> {
  _$DetailTransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? seqno = freezed,
    Object? nominal = freezed,
    Object? pathImage = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      seqno: freezed == seqno
          ? _value.seqno
          : seqno // ignore: cast_nullable_to_non_nullable
              as int?,
      nominal: freezed == nominal
          ? _value.nominal
          : nominal // ignore: cast_nullable_to_non_nullable
              as double?,
      pathImage: freezed == pathImage
          ? _value.pathImage
          : pathImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DetailTransactionCopyWith<$Res>
    implements $DetailTransactionCopyWith<$Res> {
  factory _$$_DetailTransactionCopyWith(_$_DetailTransaction value,
          $Res Function(_$_DetailTransaction) then) =
      __$$_DetailTransactionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, int? seqno, double? nominal, String? pathImage});
}

/// @nodoc
class __$$_DetailTransactionCopyWithImpl<$Res>
    extends _$DetailTransactionCopyWithImpl<$Res, _$_DetailTransaction>
    implements _$$_DetailTransactionCopyWith<$Res> {
  __$$_DetailTransactionCopyWithImpl(
      _$_DetailTransaction _value, $Res Function(_$_DetailTransaction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? seqno = freezed,
    Object? nominal = freezed,
    Object? pathImage = freezed,
  }) {
    return _then(_$_DetailTransaction(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      seqno: freezed == seqno
          ? _value.seqno
          : seqno // ignore: cast_nullable_to_non_nullable
              as int?,
      nominal: freezed == nominal
          ? _value.nominal
          : nominal // ignore: cast_nullable_to_non_nullable
              as double?,
      pathImage: freezed == pathImage
          ? _value.pathImage
          : pathImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_DetailTransaction extends _DetailTransaction {
  const _$_DetailTransaction(
      {this.id, this.seqno, this.nominal, this.pathImage})
      : super._();

  @override
  final int? id;
  @override
  final int? seqno;
  @override
  final double? nominal;
  @override
  final String? pathImage;

  @override
  String toString() {
    return 'DetailTransaction(id: $id, seqno: $seqno, nominal: $nominal, pathImage: $pathImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailTransaction &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.seqno, seqno) || other.seqno == seqno) &&
            (identical(other.nominal, nominal) || other.nominal == nominal) &&
            (identical(other.pathImage, pathImage) ||
                other.pathImage == pathImage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, seqno, nominal, pathImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailTransactionCopyWith<_$_DetailTransaction> get copyWith =>
      __$$_DetailTransactionCopyWithImpl<_$_DetailTransaction>(
          this, _$identity);
}

abstract class _DetailTransaction extends DetailTransaction {
  const factory _DetailTransaction(
      {final int? id,
      final int? seqno,
      final double? nominal,
      final String? pathImage}) = _$_DetailTransaction;
  const _DetailTransaction._() : super._();

  @override
  int? get id;
  @override
  int? get seqno;
  @override
  double? get nominal;
  @override
  String? get pathImage;
  @override
  @JsonKey(ignore: true)
  _$$_DetailTransactionCopyWith<_$_DetailTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SummaryTransaction {
  int? get id => throw _privateConstructorUsedError;
  int? get seqno => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  double? get nominal => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SummaryTransactionCopyWith<SummaryTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SummaryTransactionCopyWith<$Res> {
  factory $SummaryTransactionCopyWith(
          SummaryTransaction value, $Res Function(SummaryTransaction) then) =
      _$SummaryTransactionCopyWithImpl<$Res, SummaryTransaction>;
  @useResult
  $Res call(
      {int? id,
      int? seqno,
      String? label,
      double? nominal,
      String? description});
}

/// @nodoc
class _$SummaryTransactionCopyWithImpl<$Res, $Val extends SummaryTransaction>
    implements $SummaryTransactionCopyWith<$Res> {
  _$SummaryTransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? seqno = freezed,
    Object? label = freezed,
    Object? nominal = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      seqno: freezed == seqno
          ? _value.seqno
          : seqno // ignore: cast_nullable_to_non_nullable
              as int?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      nominal: freezed == nominal
          ? _value.nominal
          : nominal // ignore: cast_nullable_to_non_nullable
              as double?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SummaryTransactionCopyWith<$Res>
    implements $SummaryTransactionCopyWith<$Res> {
  factory _$$_SummaryTransactionCopyWith(_$_SummaryTransaction value,
          $Res Function(_$_SummaryTransaction) then) =
      __$$_SummaryTransactionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? seqno,
      String? label,
      double? nominal,
      String? description});
}

/// @nodoc
class __$$_SummaryTransactionCopyWithImpl<$Res>
    extends _$SummaryTransactionCopyWithImpl<$Res, _$_SummaryTransaction>
    implements _$$_SummaryTransactionCopyWith<$Res> {
  __$$_SummaryTransactionCopyWithImpl(
      _$_SummaryTransaction _value, $Res Function(_$_SummaryTransaction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? seqno = freezed,
    Object? label = freezed,
    Object? nominal = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_SummaryTransaction(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      seqno: freezed == seqno
          ? _value.seqno
          : seqno // ignore: cast_nullable_to_non_nullable
              as int?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      nominal: freezed == nominal
          ? _value.nominal
          : nominal // ignore: cast_nullable_to_non_nullable
              as double?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SummaryTransaction extends _SummaryTransaction {
  const _$_SummaryTransaction(
      {this.id, this.seqno, this.label, this.nominal, this.description})
      : super._();

  @override
  final int? id;
  @override
  final int? seqno;
  @override
  final String? label;
  @override
  final double? nominal;
  @override
  final String? description;

  @override
  String toString() {
    return 'SummaryTransaction(id: $id, seqno: $seqno, label: $label, nominal: $nominal, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SummaryTransaction &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.seqno, seqno) || other.seqno == seqno) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.nominal, nominal) || other.nominal == nominal) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, seqno, label, nominal, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SummaryTransactionCopyWith<_$_SummaryTransaction> get copyWith =>
      __$$_SummaryTransactionCopyWithImpl<_$_SummaryTransaction>(
          this, _$identity);
}

abstract class _SummaryTransaction extends SummaryTransaction {
  const factory _SummaryTransaction(
      {final int? id,
      final int? seqno,
      final String? label,
      final double? nominal,
      final String? description}) = _$_SummaryTransaction;
  const _SummaryTransaction._() : super._();

  @override
  int? get id;
  @override
  int? get seqno;
  @override
  String? get label;
  @override
  double? get nominal;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_SummaryTransactionCopyWith<_$_SummaryTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}
