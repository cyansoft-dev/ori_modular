// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_tracking_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DetailTrackingModel _$DetailTrackingModelFromJson(Map<String, dynamic> json) {
  return _DetailTrackingModel.fromJson(json);
}

/// @nodoc
mixin _$DetailTrackingModel {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get idDelivery => throw _privateConstructorUsedError;
  @JsonKey(name: "detail_lampiran")
  List<DetailLampiranModel>? get detailLampiran =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "detail_tracking")
  List<DetailDataTrackingModel>? get detailTracking =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailTrackingModelCopyWith<DetailTrackingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailTrackingModelCopyWith<$Res> {
  factory $DetailTrackingModelCopyWith(
          DetailTrackingModel value, $Res Function(DetailTrackingModel) then) =
      _$DetailTrackingModelCopyWithImpl<$Res, DetailTrackingModel>;
  @useResult
  $Res call(
      {int? code,
      String? message,
      String? idDelivery,
      @JsonKey(name: "detail_lampiran")
          List<DetailLampiranModel>? detailLampiran,
      @JsonKey(name: "detail_tracking")
          List<DetailDataTrackingModel>? detailTracking});
}

/// @nodoc
class _$DetailTrackingModelCopyWithImpl<$Res, $Val extends DetailTrackingModel>
    implements $DetailTrackingModelCopyWith<$Res> {
  _$DetailTrackingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? idDelivery = freezed,
    Object? detailLampiran = freezed,
    Object? detailTracking = freezed,
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
      idDelivery: freezed == idDelivery
          ? _value.idDelivery
          : idDelivery // ignore: cast_nullable_to_non_nullable
              as String?,
      detailLampiran: freezed == detailLampiran
          ? _value.detailLampiran
          : detailLampiran // ignore: cast_nullable_to_non_nullable
              as List<DetailLampiranModel>?,
      detailTracking: freezed == detailTracking
          ? _value.detailTracking
          : detailTracking // ignore: cast_nullable_to_non_nullable
              as List<DetailDataTrackingModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DetailTrackingModelCopyWith<$Res>
    implements $DetailTrackingModelCopyWith<$Res> {
  factory _$$_DetailTrackingModelCopyWith(_$_DetailTrackingModel value,
          $Res Function(_$_DetailTrackingModel) then) =
      __$$_DetailTrackingModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? code,
      String? message,
      String? idDelivery,
      @JsonKey(name: "detail_lampiran")
          List<DetailLampiranModel>? detailLampiran,
      @JsonKey(name: "detail_tracking")
          List<DetailDataTrackingModel>? detailTracking});
}

/// @nodoc
class __$$_DetailTrackingModelCopyWithImpl<$Res>
    extends _$DetailTrackingModelCopyWithImpl<$Res, _$_DetailTrackingModel>
    implements _$$_DetailTrackingModelCopyWith<$Res> {
  __$$_DetailTrackingModelCopyWithImpl(_$_DetailTrackingModel _value,
      $Res Function(_$_DetailTrackingModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? idDelivery = freezed,
    Object? detailLampiran = freezed,
    Object? detailTracking = freezed,
  }) {
    return _then(_$_DetailTrackingModel(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      idDelivery: freezed == idDelivery
          ? _value.idDelivery
          : idDelivery // ignore: cast_nullable_to_non_nullable
              as String?,
      detailLampiran: freezed == detailLampiran
          ? _value._detailLampiran
          : detailLampiran // ignore: cast_nullable_to_non_nullable
              as List<DetailLampiranModel>?,
      detailTracking: freezed == detailTracking
          ? _value._detailTracking
          : detailTracking // ignore: cast_nullable_to_non_nullable
              as List<DetailDataTrackingModel>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_DetailTrackingModel implements _DetailTrackingModel {
  const _$_DetailTrackingModel(
      {this.code,
      this.message,
      this.idDelivery,
      @JsonKey(name: "detail_lampiran")
          final List<DetailLampiranModel>? detailLampiran,
      @JsonKey(name: "detail_tracking")
          final List<DetailDataTrackingModel>? detailTracking})
      : _detailLampiran = detailLampiran,
        _detailTracking = detailTracking;

  factory _$_DetailTrackingModel.fromJson(Map<String, dynamic> json) =>
      _$$_DetailTrackingModelFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final String? idDelivery;
  final List<DetailLampiranModel>? _detailLampiran;
  @override
  @JsonKey(name: "detail_lampiran")
  List<DetailLampiranModel>? get detailLampiran {
    final value = _detailLampiran;
    if (value == null) return null;
    if (_detailLampiran is EqualUnmodifiableListView) return _detailLampiran;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<DetailDataTrackingModel>? _detailTracking;
  @override
  @JsonKey(name: "detail_tracking")
  List<DetailDataTrackingModel>? get detailTracking {
    final value = _detailTracking;
    if (value == null) return null;
    if (_detailTracking is EqualUnmodifiableListView) return _detailTracking;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DetailTrackingModel(code: $code, message: $message, idDelivery: $idDelivery, detailLampiran: $detailLampiran, detailTracking: $detailTracking)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailTrackingModel &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.idDelivery, idDelivery) ||
                other.idDelivery == idDelivery) &&
            const DeepCollectionEquality()
                .equals(other._detailLampiran, _detailLampiran) &&
            const DeepCollectionEquality()
                .equals(other._detailTracking, _detailTracking));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      code,
      message,
      idDelivery,
      const DeepCollectionEquality().hash(_detailLampiran),
      const DeepCollectionEquality().hash(_detailTracking));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailTrackingModelCopyWith<_$_DetailTrackingModel> get copyWith =>
      __$$_DetailTrackingModelCopyWithImpl<_$_DetailTrackingModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DetailTrackingModelToJson(
      this,
    );
  }
}

abstract class _DetailTrackingModel implements DetailTrackingModel {
  const factory _DetailTrackingModel(
          {final int? code,
          final String? message,
          final String? idDelivery,
          @JsonKey(name: "detail_lampiran")
              final List<DetailLampiranModel>? detailLampiran,
          @JsonKey(name: "detail_tracking")
              final List<DetailDataTrackingModel>? detailTracking}) =
      _$_DetailTrackingModel;

  factory _DetailTrackingModel.fromJson(Map<String, dynamic> json) =
      _$_DetailTrackingModel.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  String? get idDelivery;
  @override
  @JsonKey(name: "detail_lampiran")
  List<DetailLampiranModel>? get detailLampiran;
  @override
  @JsonKey(name: "detail_tracking")
  List<DetailDataTrackingModel>? get detailTracking;
  @override
  @JsonKey(ignore: true)
  _$$_DetailTrackingModelCopyWith<_$_DetailTrackingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

DetailLampiranModel _$DetailLampiranModelFromJson(Map<String, dynamic> json) {
  return _DetailLampiranModel.fromJson(json);
}

/// @nodoc
mixin _$DetailLampiranModel {
  String? get label => throw _privateConstructorUsedError;
  int? get nominal => throw _privateConstructorUsedError;
  @JsonKey(name: "image_url")
  String? get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailLampiranModelCopyWith<DetailLampiranModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailLampiranModelCopyWith<$Res> {
  factory $DetailLampiranModelCopyWith(
          DetailLampiranModel value, $Res Function(DetailLampiranModel) then) =
      _$DetailLampiranModelCopyWithImpl<$Res, DetailLampiranModel>;
  @useResult
  $Res call(
      {String? label,
      int? nominal,
      @JsonKey(name: "image_url") String? imageUrl});
}

/// @nodoc
class _$DetailLampiranModelCopyWithImpl<$Res, $Val extends DetailLampiranModel>
    implements $DetailLampiranModelCopyWith<$Res> {
  _$DetailLampiranModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_DetailLampiranModelCopyWith<$Res>
    implements $DetailLampiranModelCopyWith<$Res> {
  factory _$$_DetailLampiranModelCopyWith(_$_DetailLampiranModel value,
          $Res Function(_$_DetailLampiranModel) then) =
      __$$_DetailLampiranModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? label,
      int? nominal,
      @JsonKey(name: "image_url") String? imageUrl});
}

/// @nodoc
class __$$_DetailLampiranModelCopyWithImpl<$Res>
    extends _$DetailLampiranModelCopyWithImpl<$Res, _$_DetailLampiranModel>
    implements _$$_DetailLampiranModelCopyWith<$Res> {
  __$$_DetailLampiranModelCopyWithImpl(_$_DetailLampiranModel _value,
      $Res Function(_$_DetailLampiranModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = freezed,
    Object? nominal = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_$_DetailLampiranModel(
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

@JsonSerializable(explicitToJson: true)
class _$_DetailLampiranModel implements _DetailLampiranModel {
  const _$_DetailLampiranModel(
      {this.label, this.nominal, @JsonKey(name: "image_url") this.imageUrl});

  factory _$_DetailLampiranModel.fromJson(Map<String, dynamic> json) =>
      _$$_DetailLampiranModelFromJson(json);

  @override
  final String? label;
  @override
  final int? nominal;
  @override
  @JsonKey(name: "image_url")
  final String? imageUrl;

  @override
  String toString() {
    return 'DetailLampiranModel(label: $label, nominal: $nominal, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailLampiranModel &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.nominal, nominal) || other.nominal == nominal) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, label, nominal, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailLampiranModelCopyWith<_$_DetailLampiranModel> get copyWith =>
      __$$_DetailLampiranModelCopyWithImpl<_$_DetailLampiranModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DetailLampiranModelToJson(
      this,
    );
  }
}

abstract class _DetailLampiranModel implements DetailLampiranModel {
  const factory _DetailLampiranModel(
          {final String? label,
          final int? nominal,
          @JsonKey(name: "image_url") final String? imageUrl}) =
      _$_DetailLampiranModel;

  factory _DetailLampiranModel.fromJson(Map<String, dynamic> json) =
      _$_DetailLampiranModel.fromJson;

  @override
  String? get label;
  @override
  int? get nominal;
  @override
  @JsonKey(name: "image_url")
  String? get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_DetailLampiranModelCopyWith<_$_DetailLampiranModel> get copyWith =>
      throw _privateConstructorUsedError;
}

DetailDataTrackingModel _$DetailDataTrackingModelFromJson(
    Map<String, dynamic> json) {
  return _DetailDataTrackingModel.fromJson(json);
}

/// @nodoc
mixin _$DetailDataTrackingModel {
  String? get status => throw _privateConstructorUsedError;
  String? get keterangan => throw _privateConstructorUsedError;
  String? get pic => throw _privateConstructorUsedError;
  @JsonKey(name: "update_at")
  DateTime? get updateAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailDataTrackingModelCopyWith<DetailDataTrackingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailDataTrackingModelCopyWith<$Res> {
  factory $DetailDataTrackingModelCopyWith(DetailDataTrackingModel value,
          $Res Function(DetailDataTrackingModel) then) =
      _$DetailDataTrackingModelCopyWithImpl<$Res, DetailDataTrackingModel>;
  @useResult
  $Res call(
      {String? status,
      String? keterangan,
      String? pic,
      @JsonKey(name: "update_at") DateTime? updateAt});
}

/// @nodoc
class _$DetailDataTrackingModelCopyWithImpl<$Res,
        $Val extends DetailDataTrackingModel>
    implements $DetailDataTrackingModelCopyWith<$Res> {
  _$DetailDataTrackingModelCopyWithImpl(this._value, this._then);

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
              as String?,
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
abstract class _$$_DetailDataTrackingModelCopyWith<$Res>
    implements $DetailDataTrackingModelCopyWith<$Res> {
  factory _$$_DetailDataTrackingModelCopyWith(_$_DetailDataTrackingModel value,
          $Res Function(_$_DetailDataTrackingModel) then) =
      __$$_DetailDataTrackingModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? status,
      String? keterangan,
      String? pic,
      @JsonKey(name: "update_at") DateTime? updateAt});
}

/// @nodoc
class __$$_DetailDataTrackingModelCopyWithImpl<$Res>
    extends _$DetailDataTrackingModelCopyWithImpl<$Res,
        _$_DetailDataTrackingModel>
    implements _$$_DetailDataTrackingModelCopyWith<$Res> {
  __$$_DetailDataTrackingModelCopyWithImpl(_$_DetailDataTrackingModel _value,
      $Res Function(_$_DetailDataTrackingModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? keterangan = freezed,
    Object? pic = freezed,
    Object? updateAt = freezed,
  }) {
    return _then(_$_DetailDataTrackingModel(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
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

@JsonSerializable(explicitToJson: true)
class _$_DetailDataTrackingModel implements _DetailDataTrackingModel {
  const _$_DetailDataTrackingModel(
      {this.status,
      this.keterangan,
      this.pic,
      @JsonKey(name: "update_at") this.updateAt});

  factory _$_DetailDataTrackingModel.fromJson(Map<String, dynamic> json) =>
      _$$_DetailDataTrackingModelFromJson(json);

  @override
  final String? status;
  @override
  final String? keterangan;
  @override
  final String? pic;
  @override
  @JsonKey(name: "update_at")
  final DateTime? updateAt;

  @override
  String toString() {
    return 'DetailDataTrackingModel(status: $status, keterangan: $keterangan, pic: $pic, updateAt: $updateAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailDataTrackingModel &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.keterangan, keterangan) ||
                other.keterangan == keterangan) &&
            (identical(other.pic, pic) || other.pic == pic) &&
            (identical(other.updateAt, updateAt) ||
                other.updateAt == updateAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, status, keterangan, pic, updateAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailDataTrackingModelCopyWith<_$_DetailDataTrackingModel>
      get copyWith =>
          __$$_DetailDataTrackingModelCopyWithImpl<_$_DetailDataTrackingModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DetailDataTrackingModelToJson(
      this,
    );
  }
}

abstract class _DetailDataTrackingModel implements DetailDataTrackingModel {
  const factory _DetailDataTrackingModel(
          {final String? status,
          final String? keterangan,
          final String? pic,
          @JsonKey(name: "update_at") final DateTime? updateAt}) =
      _$_DetailDataTrackingModel;

  factory _DetailDataTrackingModel.fromJson(Map<String, dynamic> json) =
      _$_DetailDataTrackingModel.fromJson;

  @override
  String? get status;
  @override
  String? get keterangan;
  @override
  String? get pic;
  @override
  @JsonKey(name: "update_at")
  DateTime? get updateAt;
  @override
  @JsonKey(ignore: true)
  _$$_DetailDataTrackingModelCopyWith<_$_DetailDataTrackingModel>
      get copyWith => throw _privateConstructorUsedError;
}
