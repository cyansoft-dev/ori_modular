// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransactionRequestModels _$TransactionRequestModelsFromJson(
    Map<String, dynamic> json) {
  return _TransactionRequestModels.fromJson(json);
}

/// @nodoc
mixin _$TransactionRequestModels {
  @JsonKey(name: 'data')
  List<TransactionRequestModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionRequestModelsCopyWith<TransactionRequestModels> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionRequestModelsCopyWith<$Res> {
  factory $TransactionRequestModelsCopyWith(TransactionRequestModels value,
          $Res Function(TransactionRequestModels) then) =
      _$TransactionRequestModelsCopyWithImpl<$Res, TransactionRequestModels>;
  @useResult
  $Res call({@JsonKey(name: 'data') List<TransactionRequestModel>? data});
}

/// @nodoc
class _$TransactionRequestModelsCopyWithImpl<$Res,
        $Val extends TransactionRequestModels>
    implements $TransactionRequestModelsCopyWith<$Res> {
  _$TransactionRequestModelsCopyWithImpl(this._value, this._then);

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
              as List<TransactionRequestModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TransactionRequestModelsCopyWith<$Res>
    implements $TransactionRequestModelsCopyWith<$Res> {
  factory _$$_TransactionRequestModelsCopyWith(
          _$_TransactionRequestModels value,
          $Res Function(_$_TransactionRequestModels) then) =
      __$$_TransactionRequestModelsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'data') List<TransactionRequestModel>? data});
}

/// @nodoc
class __$$_TransactionRequestModelsCopyWithImpl<$Res>
    extends _$TransactionRequestModelsCopyWithImpl<$Res,
        _$_TransactionRequestModels>
    implements _$$_TransactionRequestModelsCopyWith<$Res> {
  __$$_TransactionRequestModelsCopyWithImpl(_$_TransactionRequestModels _value,
      $Res Function(_$_TransactionRequestModels) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_TransactionRequestModels(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TransactionRequestModel>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_TransactionRequestModels extends _TransactionRequestModels {
  const _$_TransactionRequestModels(
      {@JsonKey(name: 'data') final List<TransactionRequestModel>? data})
      : _data = data,
        super._();

  factory _$_TransactionRequestModels.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionRequestModelsFromJson(json);

  final List<TransactionRequestModel>? _data;
  @override
  @JsonKey(name: 'data')
  List<TransactionRequestModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TransactionRequestModels(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionRequestModels &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionRequestModelsCopyWith<_$_TransactionRequestModels>
      get copyWith => __$$_TransactionRequestModelsCopyWithImpl<
          _$_TransactionRequestModels>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionRequestModelsToJson(
      this,
    );
  }
}

abstract class _TransactionRequestModels extends TransactionRequestModels {
  const factory _TransactionRequestModels(
          {@JsonKey(name: 'data') final List<TransactionRequestModel>? data}) =
      _$_TransactionRequestModels;
  const _TransactionRequestModels._() : super._();

  factory _TransactionRequestModels.fromJson(Map<String, dynamic> json) =
      _$_TransactionRequestModels.fromJson;

  @override
  @JsonKey(name: 'data')
  List<TransactionRequestModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionRequestModelsCopyWith<_$_TransactionRequestModels>
      get copyWith => throw _privateConstructorUsedError;
}

TransactionRequestModel _$TransactionRequestModelFromJson(
    Map<String, dynamic> json) {
  return _TransactionRequestModel.fromJson(json);
}

/// @nodoc
mixin _$TransactionRequestModel {
  @JsonKey(name: 'kdtk')
  String? get kdtk => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery')
  String? get delivery => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_delivery')
  String? get idDelivery => throw _privateConstructorUsedError;
  @JsonKey(name: 'tanggal')
  DateTime? get tanggal => throw _privateConstructorUsedError;
  @JsonKey(name: 'shift')
  String? get shift => throw _privateConstructorUsedError;
  @JsonKey(name: 'detail_lampiran')
  List<LampiranModel>? get lampiran => throw _privateConstructorUsedError;
  @JsonKey(name: 'summary')
  List<SummaryModel>? get summary => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get imageString => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'latitude')
  double? get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'longitude')
  double? get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionRequestModelCopyWith<TransactionRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionRequestModelCopyWith<$Res> {
  factory $TransactionRequestModelCopyWith(TransactionRequestModel value,
          $Res Function(TransactionRequestModel) then) =
      _$TransactionRequestModelCopyWithImpl<$Res, TransactionRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'kdtk') String? kdtk,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'delivery') String? delivery,
      @JsonKey(name: 'id_delivery') String? idDelivery,
      @JsonKey(name: 'tanggal') DateTime? tanggal,
      @JsonKey(name: 'shift') String? shift,
      @JsonKey(name: 'detail_lampiran') List<LampiranModel>? lampiran,
      @JsonKey(name: 'summary') List<SummaryModel>? summary,
      @JsonKey(name: 'image') String? imageString,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'latitude') double? latitude,
      @JsonKey(name: 'longitude') double? longitude});
}

/// @nodoc
class _$TransactionRequestModelCopyWithImpl<$Res,
        $Val extends TransactionRequestModel>
    implements $TransactionRequestModelCopyWith<$Res> {
  _$TransactionRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kdtk = freezed,
    Object? type = freezed,
    Object? delivery = freezed,
    Object? idDelivery = freezed,
    Object? tanggal = freezed,
    Object? shift = freezed,
    Object? lampiran = freezed,
    Object? summary = freezed,
    Object? imageString = freezed,
    Object? status = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
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
      lampiran: freezed == lampiran
          ? _value.lampiran
          : lampiran // ignore: cast_nullable_to_non_nullable
              as List<LampiranModel>?,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as List<SummaryModel>?,
      imageString: freezed == imageString
          ? _value.imageString
          : imageString // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$_TransactionRequestModelCopyWith<$Res>
    implements $TransactionRequestModelCopyWith<$Res> {
  factory _$$_TransactionRequestModelCopyWith(_$_TransactionRequestModel value,
          $Res Function(_$_TransactionRequestModel) then) =
      __$$_TransactionRequestModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'kdtk') String? kdtk,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'delivery') String? delivery,
      @JsonKey(name: 'id_delivery') String? idDelivery,
      @JsonKey(name: 'tanggal') DateTime? tanggal,
      @JsonKey(name: 'shift') String? shift,
      @JsonKey(name: 'detail_lampiran') List<LampiranModel>? lampiran,
      @JsonKey(name: 'summary') List<SummaryModel>? summary,
      @JsonKey(name: 'image') String? imageString,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'latitude') double? latitude,
      @JsonKey(name: 'longitude') double? longitude});
}

/// @nodoc
class __$$_TransactionRequestModelCopyWithImpl<$Res>
    extends _$TransactionRequestModelCopyWithImpl<$Res,
        _$_TransactionRequestModel>
    implements _$$_TransactionRequestModelCopyWith<$Res> {
  __$$_TransactionRequestModelCopyWithImpl(_$_TransactionRequestModel _value,
      $Res Function(_$_TransactionRequestModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kdtk = freezed,
    Object? type = freezed,
    Object? delivery = freezed,
    Object? idDelivery = freezed,
    Object? tanggal = freezed,
    Object? shift = freezed,
    Object? lampiran = freezed,
    Object? summary = freezed,
    Object? imageString = freezed,
    Object? status = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_$_TransactionRequestModel(
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
      lampiran: freezed == lampiran
          ? _value._lampiran
          : lampiran // ignore: cast_nullable_to_non_nullable
              as List<LampiranModel>?,
      summary: freezed == summary
          ? _value._summary
          : summary // ignore: cast_nullable_to_non_nullable
              as List<SummaryModel>?,
      imageString: freezed == imageString
          ? _value.imageString
          : imageString // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
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

@JsonSerializable(explicitToJson: true)
class _$_TransactionRequestModel extends _TransactionRequestModel {
  const _$_TransactionRequestModel(
      {@JsonKey(name: 'kdtk') this.kdtk,
      @JsonKey(name: 'type') this.type,
      @JsonKey(name: 'delivery') this.delivery,
      @JsonKey(name: 'id_delivery') this.idDelivery,
      @JsonKey(name: 'tanggal') this.tanggal,
      @JsonKey(name: 'shift') this.shift,
      @JsonKey(name: 'detail_lampiran') final List<LampiranModel>? lampiran,
      @JsonKey(name: 'summary') final List<SummaryModel>? summary,
      @JsonKey(name: 'image') this.imageString,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'latitude') this.latitude,
      @JsonKey(name: 'longitude') this.longitude})
      : _lampiran = lampiran,
        _summary = summary,
        super._();

  factory _$_TransactionRequestModel.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionRequestModelFromJson(json);

  @override
  @JsonKey(name: 'kdtk')
  final String? kdtk;
  @override
  @JsonKey(name: 'type')
  final String? type;
  @override
  @JsonKey(name: 'delivery')
  final String? delivery;
  @override
  @JsonKey(name: 'id_delivery')
  final String? idDelivery;
  @override
  @JsonKey(name: 'tanggal')
  final DateTime? tanggal;
  @override
  @JsonKey(name: 'shift')
  final String? shift;
  final List<LampiranModel>? _lampiran;
  @override
  @JsonKey(name: 'detail_lampiran')
  List<LampiranModel>? get lampiran {
    final value = _lampiran;
    if (value == null) return null;
    if (_lampiran is EqualUnmodifiableListView) return _lampiran;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SummaryModel>? _summary;
  @override
  @JsonKey(name: 'summary')
  List<SummaryModel>? get summary {
    final value = _summary;
    if (value == null) return null;
    if (_summary is EqualUnmodifiableListView) return _summary;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'image')
  final String? imageString;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'latitude')
  final double? latitude;
  @override
  @JsonKey(name: 'longitude')
  final double? longitude;

  @override
  String toString() {
    return 'TransactionRequestModel(kdtk: $kdtk, type: $type, delivery: $delivery, idDelivery: $idDelivery, tanggal: $tanggal, shift: $shift, lampiran: $lampiran, summary: $summary, imageString: $imageString, status: $status, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionRequestModel &&
            (identical(other.kdtk, kdtk) || other.kdtk == kdtk) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.delivery, delivery) ||
                other.delivery == delivery) &&
            (identical(other.idDelivery, idDelivery) ||
                other.idDelivery == idDelivery) &&
            (identical(other.tanggal, tanggal) || other.tanggal == tanggal) &&
            (identical(other.shift, shift) || other.shift == shift) &&
            const DeepCollectionEquality().equals(other._lampiran, _lampiran) &&
            const DeepCollectionEquality().equals(other._summary, _summary) &&
            (identical(other.imageString, imageString) ||
                other.imageString == imageString) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      kdtk,
      type,
      delivery,
      idDelivery,
      tanggal,
      shift,
      const DeepCollectionEquality().hash(_lampiran),
      const DeepCollectionEquality().hash(_summary),
      imageString,
      status,
      latitude,
      longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionRequestModelCopyWith<_$_TransactionRequestModel>
      get copyWith =>
          __$$_TransactionRequestModelCopyWithImpl<_$_TransactionRequestModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionRequestModelToJson(
      this,
    );
  }
}

abstract class _TransactionRequestModel extends TransactionRequestModel {
  const factory _TransactionRequestModel(
          {@JsonKey(name: 'kdtk') final String? kdtk,
          @JsonKey(name: 'type') final String? type,
          @JsonKey(name: 'delivery') final String? delivery,
          @JsonKey(name: 'id_delivery') final String? idDelivery,
          @JsonKey(name: 'tanggal') final DateTime? tanggal,
          @JsonKey(name: 'shift') final String? shift,
          @JsonKey(name: 'detail_lampiran') final List<LampiranModel>? lampiran,
          @JsonKey(name: 'summary') final List<SummaryModel>? summary,
          @JsonKey(name: 'image') final String? imageString,
          @JsonKey(name: 'status') final String? status,
          @JsonKey(name: 'latitude') final double? latitude,
          @JsonKey(name: 'longitude') final double? longitude}) =
      _$_TransactionRequestModel;
  const _TransactionRequestModel._() : super._();

  factory _TransactionRequestModel.fromJson(Map<String, dynamic> json) =
      _$_TransactionRequestModel.fromJson;

  @override
  @JsonKey(name: 'kdtk')
  String? get kdtk;
  @override
  @JsonKey(name: 'type')
  String? get type;
  @override
  @JsonKey(name: 'delivery')
  String? get delivery;
  @override
  @JsonKey(name: 'id_delivery')
  String? get idDelivery;
  @override
  @JsonKey(name: 'tanggal')
  DateTime? get tanggal;
  @override
  @JsonKey(name: 'shift')
  String? get shift;
  @override
  @JsonKey(name: 'detail_lampiran')
  List<LampiranModel>? get lampiran;
  @override
  @JsonKey(name: 'summary')
  List<SummaryModel>? get summary;
  @override
  @JsonKey(name: 'image')
  String? get imageString;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'latitude')
  double? get latitude;
  @override
  @JsonKey(name: 'longitude')
  double? get longitude;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionRequestModelCopyWith<_$_TransactionRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

LampiranModel _$LampiranModelFromJson(Map<String, dynamic> json) {
  return _LampiranModel.fromJson(json);
}

/// @nodoc
mixin _$LampiranModel {
  @JsonKey(name: 'seqno')
  int? get seqno => throw _privateConstructorUsedError;
  @JsonKey(name: 'label')
  String? get label => throw _privateConstructorUsedError;
  @JsonKey(name: 'nominal')
  double? get nominal => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get imageString => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LampiranModelCopyWith<LampiranModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LampiranModelCopyWith<$Res> {
  factory $LampiranModelCopyWith(
          LampiranModel value, $Res Function(LampiranModel) then) =
      _$LampiranModelCopyWithImpl<$Res, LampiranModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'seqno') int? seqno,
      @JsonKey(name: 'label') String? label,
      @JsonKey(name: 'nominal') double? nominal,
      @JsonKey(name: 'image') String? imageString});
}

/// @nodoc
class _$LampiranModelCopyWithImpl<$Res, $Val extends LampiranModel>
    implements $LampiranModelCopyWith<$Res> {
  _$LampiranModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seqno = freezed,
    Object? label = freezed,
    Object? nominal = freezed,
    Object? imageString = freezed,
  }) {
    return _then(_value.copyWith(
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
      imageString: freezed == imageString
          ? _value.imageString
          : imageString // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LampiranModelCopyWith<$Res>
    implements $LampiranModelCopyWith<$Res> {
  factory _$$_LampiranModelCopyWith(
          _$_LampiranModel value, $Res Function(_$_LampiranModel) then) =
      __$$_LampiranModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'seqno') int? seqno,
      @JsonKey(name: 'label') String? label,
      @JsonKey(name: 'nominal') double? nominal,
      @JsonKey(name: 'image') String? imageString});
}

/// @nodoc
class __$$_LampiranModelCopyWithImpl<$Res>
    extends _$LampiranModelCopyWithImpl<$Res, _$_LampiranModel>
    implements _$$_LampiranModelCopyWith<$Res> {
  __$$_LampiranModelCopyWithImpl(
      _$_LampiranModel _value, $Res Function(_$_LampiranModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seqno = freezed,
    Object? label = freezed,
    Object? nominal = freezed,
    Object? imageString = freezed,
  }) {
    return _then(_$_LampiranModel(
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
      imageString: freezed == imageString
          ? _value.imageString
          : imageString // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_LampiranModel extends _LampiranModel {
  const _$_LampiranModel(
      {@JsonKey(name: 'seqno') this.seqno,
      @JsonKey(name: 'label') this.label,
      @JsonKey(name: 'nominal') this.nominal,
      @JsonKey(name: 'image') this.imageString})
      : super._();

  factory _$_LampiranModel.fromJson(Map<String, dynamic> json) =>
      _$$_LampiranModelFromJson(json);

  @override
  @JsonKey(name: 'seqno')
  final int? seqno;
  @override
  @JsonKey(name: 'label')
  final String? label;
  @override
  @JsonKey(name: 'nominal')
  final double? nominal;
  @override
  @JsonKey(name: 'image')
  final String? imageString;

  @override
  String toString() {
    return 'LampiranModel(seqno: $seqno, label: $label, nominal: $nominal, imageString: $imageString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LampiranModel &&
            (identical(other.seqno, seqno) || other.seqno == seqno) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.nominal, nominal) || other.nominal == nominal) &&
            (identical(other.imageString, imageString) ||
                other.imageString == imageString));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, seqno, label, nominal, imageString);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LampiranModelCopyWith<_$_LampiranModel> get copyWith =>
      __$$_LampiranModelCopyWithImpl<_$_LampiranModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LampiranModelToJson(
      this,
    );
  }
}

abstract class _LampiranModel extends LampiranModel {
  const factory _LampiranModel(
      {@JsonKey(name: 'seqno') final int? seqno,
      @JsonKey(name: 'label') final String? label,
      @JsonKey(name: 'nominal') final double? nominal,
      @JsonKey(name: 'image') final String? imageString}) = _$_LampiranModel;
  const _LampiranModel._() : super._();

  factory _LampiranModel.fromJson(Map<String, dynamic> json) =
      _$_LampiranModel.fromJson;

  @override
  @JsonKey(name: 'seqno')
  int? get seqno;
  @override
  @JsonKey(name: 'label')
  String? get label;
  @override
  @JsonKey(name: 'nominal')
  double? get nominal;
  @override
  @JsonKey(name: 'image')
  String? get imageString;
  @override
  @JsonKey(ignore: true)
  _$$_LampiranModelCopyWith<_$_LampiranModel> get copyWith =>
      throw _privateConstructorUsedError;
}

SummaryModel _$SummaryModelFromJson(Map<String, dynamic> json) {
  return _SummaryModel.fromJson(json);
}

/// @nodoc
mixin _$SummaryModel {
  @JsonKey(name: 'seqno')
  int? get seqno => throw _privateConstructorUsedError;
  @JsonKey(name: 'label')
  String? get label => throw _privateConstructorUsedError;
  @JsonKey(name: 'nominal')
  double? get nominal => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SummaryModelCopyWith<SummaryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SummaryModelCopyWith<$Res> {
  factory $SummaryModelCopyWith(
          SummaryModel value, $Res Function(SummaryModel) then) =
      _$SummaryModelCopyWithImpl<$Res, SummaryModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'seqno') int? seqno,
      @JsonKey(name: 'label') String? label,
      @JsonKey(name: 'nominal') double? nominal,
      @JsonKey(name: 'description') String? description});
}

/// @nodoc
class _$SummaryModelCopyWithImpl<$Res, $Val extends SummaryModel>
    implements $SummaryModelCopyWith<$Res> {
  _$SummaryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seqno = freezed,
    Object? label = freezed,
    Object? nominal = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$_SummaryModelCopyWith<$Res>
    implements $SummaryModelCopyWith<$Res> {
  factory _$$_SummaryModelCopyWith(
          _$_SummaryModel value, $Res Function(_$_SummaryModel) then) =
      __$$_SummaryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'seqno') int? seqno,
      @JsonKey(name: 'label') String? label,
      @JsonKey(name: 'nominal') double? nominal,
      @JsonKey(name: 'description') String? description});
}

/// @nodoc
class __$$_SummaryModelCopyWithImpl<$Res>
    extends _$SummaryModelCopyWithImpl<$Res, _$_SummaryModel>
    implements _$$_SummaryModelCopyWith<$Res> {
  __$$_SummaryModelCopyWithImpl(
      _$_SummaryModel _value, $Res Function(_$_SummaryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seqno = freezed,
    Object? label = freezed,
    Object? nominal = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_SummaryModel(
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

@JsonSerializable(explicitToJson: true)
class _$_SummaryModel extends _SummaryModel {
  const _$_SummaryModel(
      {@JsonKey(name: 'seqno') this.seqno,
      @JsonKey(name: 'label') this.label,
      @JsonKey(name: 'nominal') this.nominal,
      @JsonKey(name: 'description') this.description})
      : super._();

  factory _$_SummaryModel.fromJson(Map<String, dynamic> json) =>
      _$$_SummaryModelFromJson(json);

  @override
  @JsonKey(name: 'seqno')
  final int? seqno;
  @override
  @JsonKey(name: 'label')
  final String? label;
  @override
  @JsonKey(name: 'nominal')
  final double? nominal;
  @override
  @JsonKey(name: 'description')
  final String? description;

  @override
  String toString() {
    return 'SummaryModel(seqno: $seqno, label: $label, nominal: $nominal, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SummaryModel &&
            (identical(other.seqno, seqno) || other.seqno == seqno) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.nominal, nominal) || other.nominal == nominal) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, seqno, label, nominal, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SummaryModelCopyWith<_$_SummaryModel> get copyWith =>
      __$$_SummaryModelCopyWithImpl<_$_SummaryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SummaryModelToJson(
      this,
    );
  }
}

abstract class _SummaryModel extends SummaryModel {
  const factory _SummaryModel(
          {@JsonKey(name: 'seqno') final int? seqno,
          @JsonKey(name: 'label') final String? label,
          @JsonKey(name: 'nominal') final double? nominal,
          @JsonKey(name: 'description') final String? description}) =
      _$_SummaryModel;
  const _SummaryModel._() : super._();

  factory _SummaryModel.fromJson(Map<String, dynamic> json) =
      _$_SummaryModel.fromJson;

  @override
  @JsonKey(name: 'seqno')
  int? get seqno;
  @override
  @JsonKey(name: 'label')
  String? get label;
  @override
  @JsonKey(name: 'nominal')
  double? get nominal;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_SummaryModelCopyWith<_$_SummaryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
