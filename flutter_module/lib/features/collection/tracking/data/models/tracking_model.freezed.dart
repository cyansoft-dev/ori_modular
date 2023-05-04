// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tracking_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TrackingModel _$TrackingModelFromJson(Map<String, dynamic> json) {
  return _TrackingModel.fromJson(json);
}

/// @nodoc
mixin _$TrackingModel {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<DataTrackingModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrackingModelCopyWith<TrackingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackingModelCopyWith<$Res> {
  factory $TrackingModelCopyWith(
          TrackingModel value, $Res Function(TrackingModel) then) =
      _$TrackingModelCopyWithImpl<$Res, TrackingModel>;
  @useResult
  $Res call(
      {int? code,
      String? message,
      @JsonKey(name: "data") List<DataTrackingModel>? data});
}

/// @nodoc
class _$TrackingModelCopyWithImpl<$Res, $Val extends TrackingModel>
    implements $TrackingModelCopyWith<$Res> {
  _$TrackingModelCopyWithImpl(this._value, this._then);

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
              as List<DataTrackingModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TrackingModelCopyWith<$Res>
    implements $TrackingModelCopyWith<$Res> {
  factory _$$_TrackingModelCopyWith(
          _$_TrackingModel value, $Res Function(_$_TrackingModel) then) =
      __$$_TrackingModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? code,
      String? message,
      @JsonKey(name: "data") List<DataTrackingModel>? data});
}

/// @nodoc
class __$$_TrackingModelCopyWithImpl<$Res>
    extends _$TrackingModelCopyWithImpl<$Res, _$_TrackingModel>
    implements _$$_TrackingModelCopyWith<$Res> {
  __$$_TrackingModelCopyWithImpl(
      _$_TrackingModel _value, $Res Function(_$_TrackingModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_TrackingModel(
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
              as List<DataTrackingModel>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_TrackingModel implements _TrackingModel {
  const _$_TrackingModel(
      {this.code,
      this.message,
      @JsonKey(name: "data") final List<DataTrackingModel>? data})
      : _data = data;

  factory _$_TrackingModel.fromJson(Map<String, dynamic> json) =>
      _$$_TrackingModelFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  final List<DataTrackingModel>? _data;
  @override
  @JsonKey(name: "data")
  List<DataTrackingModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TrackingModel(code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TrackingModel &&
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
  _$$_TrackingModelCopyWith<_$_TrackingModel> get copyWith =>
      __$$_TrackingModelCopyWithImpl<_$_TrackingModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TrackingModelToJson(
      this,
    );
  }
}

abstract class _TrackingModel implements TrackingModel {
  const factory _TrackingModel(
          {final int? code,
          final String? message,
          @JsonKey(name: "data") final List<DataTrackingModel>? data}) =
      _$_TrackingModel;

  factory _TrackingModel.fromJson(Map<String, dynamic> json) =
      _$_TrackingModel.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  @JsonKey(name: "data")
  List<DataTrackingModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_TrackingModelCopyWith<_$_TrackingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

DataTrackingModel _$DataTrackingModelFromJson(Map<String, dynamic> json) {
  return _DataTrackingModel.fromJson(json);
}

/// @nodoc
mixin _$DataTrackingModel {
  String? get type => throw _privateConstructorUsedError;
  String? get delivery => throw _privateConstructorUsedError;
  @JsonKey(name: "id_delivery")
  String? get idDelivery => throw _privateConstructorUsedError;
  @JsonKey(name: "tgl_posting")
  DateTime? get tglPosting => throw _privateConstructorUsedError;
  int? get lampiran => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "update_at")
  DateTime? get updateAt => throw _privateConstructorUsedError;
  @JsonKey(name: "sales")
  List<SalesModel>? get sales => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataTrackingModelCopyWith<DataTrackingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataTrackingModelCopyWith<$Res> {
  factory $DataTrackingModelCopyWith(
          DataTrackingModel value, $Res Function(DataTrackingModel) then) =
      _$DataTrackingModelCopyWithImpl<$Res, DataTrackingModel>;
  @useResult
  $Res call(
      {String? type,
      String? delivery,
      @JsonKey(name: "id_delivery") String? idDelivery,
      @JsonKey(name: "tgl_posting") DateTime? tglPosting,
      int? lampiran,
      String? status,
      @JsonKey(name: "update_at") DateTime? updateAt,
      @JsonKey(name: "sales") List<SalesModel>? sales});
}

/// @nodoc
class _$DataTrackingModelCopyWithImpl<$Res, $Val extends DataTrackingModel>
    implements $DataTrackingModelCopyWith<$Res> {
  _$DataTrackingModelCopyWithImpl(this._value, this._then);

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
    Object? sales = freezed,
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
              as String?,
      updateAt: freezed == updateAt
          ? _value.updateAt
          : updateAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      sales: freezed == sales
          ? _value.sales
          : sales // ignore: cast_nullable_to_non_nullable
              as List<SalesModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataTrackingModelCopyWith<$Res>
    implements $DataTrackingModelCopyWith<$Res> {
  factory _$$_DataTrackingModelCopyWith(_$_DataTrackingModel value,
          $Res Function(_$_DataTrackingModel) then) =
      __$$_DataTrackingModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? type,
      String? delivery,
      @JsonKey(name: "id_delivery") String? idDelivery,
      @JsonKey(name: "tgl_posting") DateTime? tglPosting,
      int? lampiran,
      String? status,
      @JsonKey(name: "update_at") DateTime? updateAt,
      @JsonKey(name: "sales") List<SalesModel>? sales});
}

/// @nodoc
class __$$_DataTrackingModelCopyWithImpl<$Res>
    extends _$DataTrackingModelCopyWithImpl<$Res, _$_DataTrackingModel>
    implements _$$_DataTrackingModelCopyWith<$Res> {
  __$$_DataTrackingModelCopyWithImpl(
      _$_DataTrackingModel _value, $Res Function(_$_DataTrackingModel) _then)
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
    Object? sales = freezed,
  }) {
    return _then(_$_DataTrackingModel(
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
              as String?,
      updateAt: freezed == updateAt
          ? _value.updateAt
          : updateAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      sales: freezed == sales
          ? _value._sales
          : sales // ignore: cast_nullable_to_non_nullable
              as List<SalesModel>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_DataTrackingModel implements _DataTrackingModel {
  const _$_DataTrackingModel(
      {this.type,
      this.delivery,
      @JsonKey(name: "id_delivery") this.idDelivery,
      @JsonKey(name: "tgl_posting") this.tglPosting,
      this.lampiran,
      this.status,
      @JsonKey(name: "update_at") this.updateAt,
      @JsonKey(name: "sales") final List<SalesModel>? sales})
      : _sales = sales;

  factory _$_DataTrackingModel.fromJson(Map<String, dynamic> json) =>
      _$$_DataTrackingModelFromJson(json);

  @override
  final String? type;
  @override
  final String? delivery;
  @override
  @JsonKey(name: "id_delivery")
  final String? idDelivery;
  @override
  @JsonKey(name: "tgl_posting")
  final DateTime? tglPosting;
  @override
  final int? lampiran;
  @override
  final String? status;
  @override
  @JsonKey(name: "update_at")
  final DateTime? updateAt;
  final List<SalesModel>? _sales;
  @override
  @JsonKey(name: "sales")
  List<SalesModel>? get sales {
    final value = _sales;
    if (value == null) return null;
    if (_sales is EqualUnmodifiableListView) return _sales;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DataTrackingModel(type: $type, delivery: $delivery, idDelivery: $idDelivery, tglPosting: $tglPosting, lampiran: $lampiran, status: $status, updateAt: $updateAt, sales: $sales)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataTrackingModel &&
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
            const DeepCollectionEquality().equals(other._sales, _sales));
  }

  @JsonKey(ignore: true)
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
      const DeepCollectionEquality().hash(_sales));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataTrackingModelCopyWith<_$_DataTrackingModel> get copyWith =>
      __$$_DataTrackingModelCopyWithImpl<_$_DataTrackingModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataTrackingModelToJson(
      this,
    );
  }
}

abstract class _DataTrackingModel implements DataTrackingModel {
  const factory _DataTrackingModel(
          {final String? type,
          final String? delivery,
          @JsonKey(name: "id_delivery") final String? idDelivery,
          @JsonKey(name: "tgl_posting") final DateTime? tglPosting,
          final int? lampiran,
          final String? status,
          @JsonKey(name: "update_at") final DateTime? updateAt,
          @JsonKey(name: "sales") final List<SalesModel>? sales}) =
      _$_DataTrackingModel;

  factory _DataTrackingModel.fromJson(Map<String, dynamic> json) =
      _$_DataTrackingModel.fromJson;

  @override
  String? get type;
  @override
  String? get delivery;
  @override
  @JsonKey(name: "id_delivery")
  String? get idDelivery;
  @override
  @JsonKey(name: "tgl_posting")
  DateTime? get tglPosting;
  @override
  int? get lampiran;
  @override
  String? get status;
  @override
  @JsonKey(name: "update_at")
  DateTime? get updateAt;
  @override
  @JsonKey(name: "sales")
  List<SalesModel>? get sales;
  @override
  @JsonKey(ignore: true)
  _$$_DataTrackingModelCopyWith<_$_DataTrackingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

SalesModel _$SalesModelFromJson(Map<String, dynamic> json) {
  return _SalesModel.fromJson(json);
}

/// @nodoc
mixin _$SalesModel {
  DateTime? get tanggal => throw _privateConstructorUsedError;
  int? get lampiran => throw _privateConstructorUsedError;
  int? get nominal => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SalesModelCopyWith<SalesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesModelCopyWith<$Res> {
  factory $SalesModelCopyWith(
          SalesModel value, $Res Function(SalesModel) then) =
      _$SalesModelCopyWithImpl<$Res, SalesModel>;
  @useResult
  $Res call({DateTime? tanggal, int? lampiran, int? nominal});
}

/// @nodoc
class _$SalesModelCopyWithImpl<$Res, $Val extends SalesModel>
    implements $SalesModelCopyWith<$Res> {
  _$SalesModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_SalesModelCopyWith<$Res>
    implements $SalesModelCopyWith<$Res> {
  factory _$$_SalesModelCopyWith(
          _$_SalesModel value, $Res Function(_$_SalesModel) then) =
      __$$_SalesModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime? tanggal, int? lampiran, int? nominal});
}

/// @nodoc
class __$$_SalesModelCopyWithImpl<$Res>
    extends _$SalesModelCopyWithImpl<$Res, _$_SalesModel>
    implements _$$_SalesModelCopyWith<$Res> {
  __$$_SalesModelCopyWithImpl(
      _$_SalesModel _value, $Res Function(_$_SalesModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tanggal = freezed,
    Object? lampiran = freezed,
    Object? nominal = freezed,
  }) {
    return _then(_$_SalesModel(
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
@JsonSerializable()
class _$_SalesModel implements _SalesModel {
  const _$_SalesModel({this.tanggal, this.lampiran, this.nominal});

  factory _$_SalesModel.fromJson(Map<String, dynamic> json) =>
      _$$_SalesModelFromJson(json);

  @override
  final DateTime? tanggal;
  @override
  final int? lampiran;
  @override
  final int? nominal;

  @override
  String toString() {
    return 'SalesModel(tanggal: $tanggal, lampiran: $lampiran, nominal: $nominal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SalesModel &&
            (identical(other.tanggal, tanggal) || other.tanggal == tanggal) &&
            (identical(other.lampiran, lampiran) ||
                other.lampiran == lampiran) &&
            (identical(other.nominal, nominal) || other.nominal == nominal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, tanggal, lampiran, nominal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SalesModelCopyWith<_$_SalesModel> get copyWith =>
      __$$_SalesModelCopyWithImpl<_$_SalesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SalesModelToJson(
      this,
    );
  }
}

abstract class _SalesModel implements SalesModel {
  const factory _SalesModel(
      {final DateTime? tanggal,
      final int? lampiran,
      final int? nominal}) = _$_SalesModel;

  factory _SalesModel.fromJson(Map<String, dynamic> json) =
      _$_SalesModel.fromJson;

  @override
  DateTime? get tanggal;
  @override
  int? get lampiran;
  @override
  int? get nominal;
  @override
  @JsonKey(ignore: true)
  _$$_SalesModelCopyWith<_$_SalesModel> get copyWith =>
      throw _privateConstructorUsedError;
}
