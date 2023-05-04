// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'master_collect_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MasterCollectModel _$MasterCollectModelFromJson(Map<String, dynamic> json) {
  return _MasterCollectModel.fromJson(json);
}

/// @nodoc
mixin _$MasterCollectModel {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get kdtk => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_info')
  DeliveryInfoModel? get deliveryInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'collection_info')
  CollectionInfoModel? get collectionInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MasterCollectModelCopyWith<MasterCollectModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MasterCollectModelCopyWith<$Res> {
  factory $MasterCollectModelCopyWith(
          MasterCollectModel value, $Res Function(MasterCollectModel) then) =
      _$MasterCollectModelCopyWithImpl<$Res, MasterCollectModel>;
  @useResult
  $Res call(
      {int? code,
      String? message,
      String? kdtk,
      @JsonKey(name: 'delivery_info') DeliveryInfoModel? deliveryInfo,
      @JsonKey(name: 'collection_info') CollectionInfoModel? collectionInfo});

  $DeliveryInfoModelCopyWith<$Res>? get deliveryInfo;
  $CollectionInfoModelCopyWith<$Res>? get collectionInfo;
}

/// @nodoc
class _$MasterCollectModelCopyWithImpl<$Res, $Val extends MasterCollectModel>
    implements $MasterCollectModelCopyWith<$Res> {
  _$MasterCollectModelCopyWithImpl(this._value, this._then);

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
    Object? deliveryInfo = freezed,
    Object? collectionInfo = freezed,
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
      deliveryInfo: freezed == deliveryInfo
          ? _value.deliveryInfo
          : deliveryInfo // ignore: cast_nullable_to_non_nullable
              as DeliveryInfoModel?,
      collectionInfo: freezed == collectionInfo
          ? _value.collectionInfo
          : collectionInfo // ignore: cast_nullable_to_non_nullable
              as CollectionInfoModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DeliveryInfoModelCopyWith<$Res>? get deliveryInfo {
    if (_value.deliveryInfo == null) {
      return null;
    }

    return $DeliveryInfoModelCopyWith<$Res>(_value.deliveryInfo!, (value) {
      return _then(_value.copyWith(deliveryInfo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CollectionInfoModelCopyWith<$Res>? get collectionInfo {
    if (_value.collectionInfo == null) {
      return null;
    }

    return $CollectionInfoModelCopyWith<$Res>(_value.collectionInfo!, (value) {
      return _then(_value.copyWith(collectionInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MasterCollectModelCopyWith<$Res>
    implements $MasterCollectModelCopyWith<$Res> {
  factory _$$_MasterCollectModelCopyWith(_$_MasterCollectModel value,
          $Res Function(_$_MasterCollectModel) then) =
      __$$_MasterCollectModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? code,
      String? message,
      String? kdtk,
      @JsonKey(name: 'delivery_info') DeliveryInfoModel? deliveryInfo,
      @JsonKey(name: 'collection_info') CollectionInfoModel? collectionInfo});

  @override
  $DeliveryInfoModelCopyWith<$Res>? get deliveryInfo;
  @override
  $CollectionInfoModelCopyWith<$Res>? get collectionInfo;
}

/// @nodoc
class __$$_MasterCollectModelCopyWithImpl<$Res>
    extends _$MasterCollectModelCopyWithImpl<$Res, _$_MasterCollectModel>
    implements _$$_MasterCollectModelCopyWith<$Res> {
  __$$_MasterCollectModelCopyWithImpl(
      _$_MasterCollectModel _value, $Res Function(_$_MasterCollectModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? kdtk = freezed,
    Object? deliveryInfo = freezed,
    Object? collectionInfo = freezed,
  }) {
    return _then(_$_MasterCollectModel(
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
      deliveryInfo: freezed == deliveryInfo
          ? _value.deliveryInfo
          : deliveryInfo // ignore: cast_nullable_to_non_nullable
              as DeliveryInfoModel?,
      collectionInfo: freezed == collectionInfo
          ? _value.collectionInfo
          : collectionInfo // ignore: cast_nullable_to_non_nullable
              as CollectionInfoModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_MasterCollectModel implements _MasterCollectModel {
  const _$_MasterCollectModel(
      {this.code,
      this.message,
      this.kdtk,
      @JsonKey(name: 'delivery_info') this.deliveryInfo,
      @JsonKey(name: 'collection_info') this.collectionInfo});

  factory _$_MasterCollectModel.fromJson(Map<String, dynamic> json) =>
      _$$_MasterCollectModelFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final String? kdtk;
  @override
  @JsonKey(name: 'delivery_info')
  final DeliveryInfoModel? deliveryInfo;
  @override
  @JsonKey(name: 'collection_info')
  final CollectionInfoModel? collectionInfo;

  @override
  String toString() {
    return 'MasterCollectModel(code: $code, message: $message, kdtk: $kdtk, deliveryInfo: $deliveryInfo, collectionInfo: $collectionInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MasterCollectModel &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.kdtk, kdtk) || other.kdtk == kdtk) &&
            (identical(other.deliveryInfo, deliveryInfo) ||
                other.deliveryInfo == deliveryInfo) &&
            (identical(other.collectionInfo, collectionInfo) ||
                other.collectionInfo == collectionInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, code, message, kdtk, deliveryInfo, collectionInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MasterCollectModelCopyWith<_$_MasterCollectModel> get copyWith =>
      __$$_MasterCollectModelCopyWithImpl<_$_MasterCollectModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MasterCollectModelToJson(
      this,
    );
  }
}

abstract class _MasterCollectModel implements MasterCollectModel {
  const factory _MasterCollectModel(
      {final int? code,
      final String? message,
      final String? kdtk,
      @JsonKey(name: 'delivery_info')
          final DeliveryInfoModel? deliveryInfo,
      @JsonKey(name: 'collection_info')
          final CollectionInfoModel? collectionInfo}) = _$_MasterCollectModel;

  factory _MasterCollectModel.fromJson(Map<String, dynamic> json) =
      _$_MasterCollectModel.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  String? get kdtk;
  @override
  @JsonKey(name: 'delivery_info')
  DeliveryInfoModel? get deliveryInfo;
  @override
  @JsonKey(name: 'collection_info')
  CollectionInfoModel? get collectionInfo;
  @override
  @JsonKey(ignore: true)
  _$$_MasterCollectModelCopyWith<_$_MasterCollectModel> get copyWith =>
      throw _privateConstructorUsedError;
}

CollectionInfoModel _$CollectionInfoModelFromJson(Map<String, dynamic> json) {
  return _CollectionInfoModel.fromJson(json);
}

/// @nodoc
mixin _$CollectionInfoModel {
  @JsonKey(name: 'delivery_box')
  List<String>? get deliveryBox => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_pending')
  List<DateTime>? get datePending => throw _privateConstructorUsedError;
  @JsonKey(name: 'shift')
  List<String>? get currentShift => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CollectionInfoModelCopyWith<CollectionInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionInfoModelCopyWith<$Res> {
  factory $CollectionInfoModelCopyWith(
          CollectionInfoModel value, $Res Function(CollectionInfoModel) then) =
      _$CollectionInfoModelCopyWithImpl<$Res, CollectionInfoModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'delivery_box') List<String>? deliveryBox,
      @JsonKey(name: 'date_pending') List<DateTime>? datePending,
      @JsonKey(name: 'shift') List<String>? currentShift});
}

/// @nodoc
class _$CollectionInfoModelCopyWithImpl<$Res, $Val extends CollectionInfoModel>
    implements $CollectionInfoModelCopyWith<$Res> {
  _$CollectionInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deliveryBox = freezed,
    Object? datePending = freezed,
    Object? currentShift = freezed,
  }) {
    return _then(_value.copyWith(
      deliveryBox: freezed == deliveryBox
          ? _value.deliveryBox
          : deliveryBox // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      datePending: freezed == datePending
          ? _value.datePending
          : datePending // ignore: cast_nullable_to_non_nullable
              as List<DateTime>?,
      currentShift: freezed == currentShift
          ? _value.currentShift
          : currentShift // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CollectionInfoModelCopyWith<$Res>
    implements $CollectionInfoModelCopyWith<$Res> {
  factory _$$_CollectionInfoModelCopyWith(_$_CollectionInfoModel value,
          $Res Function(_$_CollectionInfoModel) then) =
      __$$_CollectionInfoModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'delivery_box') List<String>? deliveryBox,
      @JsonKey(name: 'date_pending') List<DateTime>? datePending,
      @JsonKey(name: 'shift') List<String>? currentShift});
}

/// @nodoc
class __$$_CollectionInfoModelCopyWithImpl<$Res>
    extends _$CollectionInfoModelCopyWithImpl<$Res, _$_CollectionInfoModel>
    implements _$$_CollectionInfoModelCopyWith<$Res> {
  __$$_CollectionInfoModelCopyWithImpl(_$_CollectionInfoModel _value,
      $Res Function(_$_CollectionInfoModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deliveryBox = freezed,
    Object? datePending = freezed,
    Object? currentShift = freezed,
  }) {
    return _then(_$_CollectionInfoModel(
      deliveryBox: freezed == deliveryBox
          ? _value._deliveryBox
          : deliveryBox // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      datePending: freezed == datePending
          ? _value._datePending
          : datePending // ignore: cast_nullable_to_non_nullable
              as List<DateTime>?,
      currentShift: freezed == currentShift
          ? _value._currentShift
          : currentShift // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_CollectionInfoModel implements _CollectionInfoModel {
  const _$_CollectionInfoModel(
      {@JsonKey(name: 'delivery_box') final List<String>? deliveryBox,
      @JsonKey(name: 'date_pending') final List<DateTime>? datePending,
      @JsonKey(name: 'shift') final List<String>? currentShift})
      : _deliveryBox = deliveryBox,
        _datePending = datePending,
        _currentShift = currentShift;

  factory _$_CollectionInfoModel.fromJson(Map<String, dynamic> json) =>
      _$$_CollectionInfoModelFromJson(json);

  final List<String>? _deliveryBox;
  @override
  @JsonKey(name: 'delivery_box')
  List<String>? get deliveryBox {
    final value = _deliveryBox;
    if (value == null) return null;
    if (_deliveryBox is EqualUnmodifiableListView) return _deliveryBox;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<DateTime>? _datePending;
  @override
  @JsonKey(name: 'date_pending')
  List<DateTime>? get datePending {
    final value = _datePending;
    if (value == null) return null;
    if (_datePending is EqualUnmodifiableListView) return _datePending;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _currentShift;
  @override
  @JsonKey(name: 'shift')
  List<String>? get currentShift {
    final value = _currentShift;
    if (value == null) return null;
    if (_currentShift is EqualUnmodifiableListView) return _currentShift;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CollectionInfoModel(deliveryBox: $deliveryBox, datePending: $datePending, currentShift: $currentShift)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CollectionInfoModel &&
            const DeepCollectionEquality()
                .equals(other._deliveryBox, _deliveryBox) &&
            const DeepCollectionEquality()
                .equals(other._datePending, _datePending) &&
            const DeepCollectionEquality()
                .equals(other._currentShift, _currentShift));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_deliveryBox),
      const DeepCollectionEquality().hash(_datePending),
      const DeepCollectionEquality().hash(_currentShift));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CollectionInfoModelCopyWith<_$_CollectionInfoModel> get copyWith =>
      __$$_CollectionInfoModelCopyWithImpl<_$_CollectionInfoModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CollectionInfoModelToJson(
      this,
    );
  }
}

abstract class _CollectionInfoModel implements CollectionInfoModel {
  const factory _CollectionInfoModel(
          {@JsonKey(name: 'delivery_box') final List<String>? deliveryBox,
          @JsonKey(name: 'date_pending') final List<DateTime>? datePending,
          @JsonKey(name: 'shift') final List<String>? currentShift}) =
      _$_CollectionInfoModel;

  factory _CollectionInfoModel.fromJson(Map<String, dynamic> json) =
      _$_CollectionInfoModel.fromJson;

  @override
  @JsonKey(name: 'delivery_box')
  List<String>? get deliveryBox;
  @override
  @JsonKey(name: 'date_pending')
  List<DateTime>? get datePending;
  @override
  @JsonKey(name: 'shift')
  List<String>? get currentShift;
  @override
  @JsonKey(ignore: true)
  _$$_CollectionInfoModelCopyWith<_$_CollectionInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

DeliveryInfoModel _$DeliveryInfoModelFromJson(Map<String, dynamic> json) {
  return _DeliveryInfoModel.fromJson(json);
}

/// @nodoc
mixin _$DeliveryInfoModel {
  String? get driver => throw _privateConstructorUsedError;
  @JsonKey(name: 'vehicle_number')
  String? get vehicleNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'arrival_time')
  DateTime? get arrivalEstimate => throw _privateConstructorUsedError;

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
      {String? driver,
      @JsonKey(name: 'vehicle_number') String? vehicleNumber,
      @JsonKey(name: 'arrival_time') DateTime? arrivalEstimate});
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
    Object? driver = freezed,
    Object? vehicleNumber = freezed,
    Object? arrivalEstimate = freezed,
  }) {
    return _then(_value.copyWith(
      driver: freezed == driver
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleNumber: freezed == vehicleNumber
          ? _value.vehicleNumber
          : vehicleNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      arrivalEstimate: freezed == arrivalEstimate
          ? _value.arrivalEstimate
          : arrivalEstimate // ignore: cast_nullable_to_non_nullable
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
      {String? driver,
      @JsonKey(name: 'vehicle_number') String? vehicleNumber,
      @JsonKey(name: 'arrival_time') DateTime? arrivalEstimate});
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
    Object? driver = freezed,
    Object? vehicleNumber = freezed,
    Object? arrivalEstimate = freezed,
  }) {
    return _then(_$_DeliveryInfoModel(
      driver: freezed == driver
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleNumber: freezed == vehicleNumber
          ? _value.vehicleNumber
          : vehicleNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      arrivalEstimate: freezed == arrivalEstimate
          ? _value.arrivalEstimate
          : arrivalEstimate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_DeliveryInfoModel implements _DeliveryInfoModel {
  const _$_DeliveryInfoModel(
      {this.driver,
      @JsonKey(name: 'vehicle_number') this.vehicleNumber,
      @JsonKey(name: 'arrival_time') this.arrivalEstimate});

  factory _$_DeliveryInfoModel.fromJson(Map<String, dynamic> json) =>
      _$$_DeliveryInfoModelFromJson(json);

  @override
  final String? driver;
  @override
  @JsonKey(name: 'vehicle_number')
  final String? vehicleNumber;
  @override
  @JsonKey(name: 'arrival_time')
  final DateTime? arrivalEstimate;

  @override
  String toString() {
    return 'DeliveryInfoModel(driver: $driver, vehicleNumber: $vehicleNumber, arrivalEstimate: $arrivalEstimate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeliveryInfoModel &&
            (identical(other.driver, driver) || other.driver == driver) &&
            (identical(other.vehicleNumber, vehicleNumber) ||
                other.vehicleNumber == vehicleNumber) &&
            (identical(other.arrivalEstimate, arrivalEstimate) ||
                other.arrivalEstimate == arrivalEstimate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, driver, vehicleNumber, arrivalEstimate);

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
          {final String? driver,
          @JsonKey(name: 'vehicle_number') final String? vehicleNumber,
          @JsonKey(name: 'arrival_time') final DateTime? arrivalEstimate}) =
      _$_DeliveryInfoModel;

  factory _DeliveryInfoModel.fromJson(Map<String, dynamic> json) =
      _$_DeliveryInfoModel.fromJson;

  @override
  String? get driver;
  @override
  @JsonKey(name: 'vehicle_number')
  String? get vehicleNumber;
  @override
  @JsonKey(name: 'arrival_time')
  DateTime? get arrivalEstimate;
  @override
  @JsonKey(ignore: true)
  _$$_DeliveryInfoModelCopyWith<_$_DeliveryInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
