// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'minus_opname_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MinusOpnameModel _$MinusOpnameModelFromJson(Map<String, dynamic> json) {
  return _MinusOpnameModel.fromJson(json);
}

/// @nodoc
mixin _$MinusOpnameModel {
  int? get id => throw _privateConstructorUsedError;
  String? get kdtk => throw _privateConstructorUsedError;
  @JsonKey(name: "fraud_data")
  MinusFraudModel? get fraudData => throw _privateConstructorUsedError;
  @JsonKey(name: "rrak_data")
  MinusRrakModel? get rrakData => throw _privateConstructorUsedError;
  @JsonKey(name: "varian_data")
  MinusVarianModel? get varianData => throw _privateConstructorUsedError;
  @JsonKey(name: "other_data")
  MinusOtherModel? get otherData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MinusOpnameModelCopyWith<MinusOpnameModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MinusOpnameModelCopyWith<$Res> {
  factory $MinusOpnameModelCopyWith(
          MinusOpnameModel value, $Res Function(MinusOpnameModel) then) =
      _$MinusOpnameModelCopyWithImpl<$Res, MinusOpnameModel>;
  @useResult
  $Res call(
      {int? id,
      String? kdtk,
      @JsonKey(name: "fraud_data") MinusFraudModel? fraudData,
      @JsonKey(name: "rrak_data") MinusRrakModel? rrakData,
      @JsonKey(name: "varian_data") MinusVarianModel? varianData,
      @JsonKey(name: "other_data") MinusOtherModel? otherData});

  $MinusFraudModelCopyWith<$Res>? get fraudData;
  $MinusRrakModelCopyWith<$Res>? get rrakData;
  $MinusVarianModelCopyWith<$Res>? get varianData;
  $MinusOtherModelCopyWith<$Res>? get otherData;
}

/// @nodoc
class _$MinusOpnameModelCopyWithImpl<$Res, $Val extends MinusOpnameModel>
    implements $MinusOpnameModelCopyWith<$Res> {
  _$MinusOpnameModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? kdtk = freezed,
    Object? fraudData = freezed,
    Object? rrakData = freezed,
    Object? varianData = freezed,
    Object? otherData = freezed,
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
      fraudData: freezed == fraudData
          ? _value.fraudData
          : fraudData // ignore: cast_nullable_to_non_nullable
              as MinusFraudModel?,
      rrakData: freezed == rrakData
          ? _value.rrakData
          : rrakData // ignore: cast_nullable_to_non_nullable
              as MinusRrakModel?,
      varianData: freezed == varianData
          ? _value.varianData
          : varianData // ignore: cast_nullable_to_non_nullable
              as MinusVarianModel?,
      otherData: freezed == otherData
          ? _value.otherData
          : otherData // ignore: cast_nullable_to_non_nullable
              as MinusOtherModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MinusFraudModelCopyWith<$Res>? get fraudData {
    if (_value.fraudData == null) {
      return null;
    }

    return $MinusFraudModelCopyWith<$Res>(_value.fraudData!, (value) {
      return _then(_value.copyWith(fraudData: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MinusRrakModelCopyWith<$Res>? get rrakData {
    if (_value.rrakData == null) {
      return null;
    }

    return $MinusRrakModelCopyWith<$Res>(_value.rrakData!, (value) {
      return _then(_value.copyWith(rrakData: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MinusVarianModelCopyWith<$Res>? get varianData {
    if (_value.varianData == null) {
      return null;
    }

    return $MinusVarianModelCopyWith<$Res>(_value.varianData!, (value) {
      return _then(_value.copyWith(varianData: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MinusOtherModelCopyWith<$Res>? get otherData {
    if (_value.otherData == null) {
      return null;
    }

    return $MinusOtherModelCopyWith<$Res>(_value.otherData!, (value) {
      return _then(_value.copyWith(otherData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MinusOpnameModelCopyWith<$Res>
    implements $MinusOpnameModelCopyWith<$Res> {
  factory _$$_MinusOpnameModelCopyWith(
          _$_MinusOpnameModel value, $Res Function(_$_MinusOpnameModel) then) =
      __$$_MinusOpnameModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? kdtk,
      @JsonKey(name: "fraud_data") MinusFraudModel? fraudData,
      @JsonKey(name: "rrak_data") MinusRrakModel? rrakData,
      @JsonKey(name: "varian_data") MinusVarianModel? varianData,
      @JsonKey(name: "other_data") MinusOtherModel? otherData});

  @override
  $MinusFraudModelCopyWith<$Res>? get fraudData;
  @override
  $MinusRrakModelCopyWith<$Res>? get rrakData;
  @override
  $MinusVarianModelCopyWith<$Res>? get varianData;
  @override
  $MinusOtherModelCopyWith<$Res>? get otherData;
}

/// @nodoc
class __$$_MinusOpnameModelCopyWithImpl<$Res>
    extends _$MinusOpnameModelCopyWithImpl<$Res, _$_MinusOpnameModel>
    implements _$$_MinusOpnameModelCopyWith<$Res> {
  __$$_MinusOpnameModelCopyWithImpl(
      _$_MinusOpnameModel _value, $Res Function(_$_MinusOpnameModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? kdtk = freezed,
    Object? fraudData = freezed,
    Object? rrakData = freezed,
    Object? varianData = freezed,
    Object? otherData = freezed,
  }) {
    return _then(_$_MinusOpnameModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      kdtk: freezed == kdtk
          ? _value.kdtk
          : kdtk // ignore: cast_nullable_to_non_nullable
              as String?,
      fraudData: freezed == fraudData
          ? _value.fraudData
          : fraudData // ignore: cast_nullable_to_non_nullable
              as MinusFraudModel?,
      rrakData: freezed == rrakData
          ? _value.rrakData
          : rrakData // ignore: cast_nullable_to_non_nullable
              as MinusRrakModel?,
      varianData: freezed == varianData
          ? _value.varianData
          : varianData // ignore: cast_nullable_to_non_nullable
              as MinusVarianModel?,
      otherData: freezed == otherData
          ? _value.otherData
          : otherData // ignore: cast_nullable_to_non_nullable
              as MinusOtherModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MinusOpnameModel implements _MinusOpnameModel {
  const _$_MinusOpnameModel(
      {this.id,
      this.kdtk,
      @JsonKey(name: "fraud_data") this.fraudData,
      @JsonKey(name: "rrak_data") this.rrakData,
      @JsonKey(name: "varian_data") this.varianData,
      @JsonKey(name: "other_data") this.otherData});

  factory _$_MinusOpnameModel.fromJson(Map<String, dynamic> json) =>
      _$$_MinusOpnameModelFromJson(json);

  @override
  final int? id;
  @override
  final String? kdtk;
  @override
  @JsonKey(name: "fraud_data")
  final MinusFraudModel? fraudData;
  @override
  @JsonKey(name: "rrak_data")
  final MinusRrakModel? rrakData;
  @override
  @JsonKey(name: "varian_data")
  final MinusVarianModel? varianData;
  @override
  @JsonKey(name: "other_data")
  final MinusOtherModel? otherData;

  @override
  String toString() {
    return 'MinusOpnameModel(id: $id, kdtk: $kdtk, fraudData: $fraudData, rrakData: $rrakData, varianData: $varianData, otherData: $otherData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MinusOpnameModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.kdtk, kdtk) || other.kdtk == kdtk) &&
            (identical(other.fraudData, fraudData) ||
                other.fraudData == fraudData) &&
            (identical(other.rrakData, rrakData) ||
                other.rrakData == rrakData) &&
            (identical(other.varianData, varianData) ||
                other.varianData == varianData) &&
            (identical(other.otherData, otherData) ||
                other.otherData == otherData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, kdtk, fraudData, rrakData, varianData, otherData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MinusOpnameModelCopyWith<_$_MinusOpnameModel> get copyWith =>
      __$$_MinusOpnameModelCopyWithImpl<_$_MinusOpnameModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MinusOpnameModelToJson(
      this,
    );
  }
}

abstract class _MinusOpnameModel implements MinusOpnameModel {
  const factory _MinusOpnameModel(
          {final int? id,
          final String? kdtk,
          @JsonKey(name: "fraud_data") final MinusFraudModel? fraudData,
          @JsonKey(name: "rrak_data") final MinusRrakModel? rrakData,
          @JsonKey(name: "varian_data") final MinusVarianModel? varianData,
          @JsonKey(name: "other_data") final MinusOtherModel? otherData}) =
      _$_MinusOpnameModel;

  factory _MinusOpnameModel.fromJson(Map<String, dynamic> json) =
      _$_MinusOpnameModel.fromJson;

  @override
  int? get id;
  @override
  String? get kdtk;
  @override
  @JsonKey(name: "fraud_data")
  MinusFraudModel? get fraudData;
  @override
  @JsonKey(name: "rrak_data")
  MinusRrakModel? get rrakData;
  @override
  @JsonKey(name: "varian_data")
  MinusVarianModel? get varianData;
  @override
  @JsonKey(name: "other_data")
  MinusOtherModel? get otherData;
  @override
  @JsonKey(ignore: true)
  _$$_MinusOpnameModelCopyWith<_$_MinusOpnameModel> get copyWith =>
      throw _privateConstructorUsedError;
}

MinusFraudModel _$MinusFraudModelFromJson(Map<String, dynamic> json) {
  return _MinusFraudModel.fromJson(json);
}

/// @nodoc
mixin _$MinusFraudModel {
  int? get id => throw _privateConstructorUsedError;
  String? get kdtk => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  String? get userId => throw _privateConstructorUsedError;
  double? get nominal => throw _privateConstructorUsedError;
  String? get modus => throw _privateConstructorUsedError;
  DateTime? get tanggal => throw _privateConstructorUsedError;
  @JsonKey(name: "status_refund")
  String? get refundStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "image_refund")
  String? get imgBukti => throw _privateConstructorUsedError;
  @JsonKey(name: "komitment")
  String? get commitment => throw _privateConstructorUsedError;
  String? get sanksi => throw _privateConstructorUsedError;
  @JsonKey(name: "image_sanksi")
  String? get imgSanksi => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MinusFraudModelCopyWith<MinusFraudModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MinusFraudModelCopyWith<$Res> {
  factory $MinusFraudModelCopyWith(
          MinusFraudModel value, $Res Function(MinusFraudModel) then) =
      _$MinusFraudModelCopyWithImpl<$Res, MinusFraudModel>;
  @useResult
  $Res call(
      {int? id,
      String? kdtk,
      @JsonKey(name: "user_id") String? userId,
      double? nominal,
      String? modus,
      DateTime? tanggal,
      @JsonKey(name: "status_refund") String? refundStatus,
      @JsonKey(name: "image_refund") String? imgBukti,
      @JsonKey(name: "komitment") String? commitment,
      String? sanksi,
      @JsonKey(name: "image_sanksi") String? imgSanksi});
}

/// @nodoc
class _$MinusFraudModelCopyWithImpl<$Res, $Val extends MinusFraudModel>
    implements $MinusFraudModelCopyWith<$Res> {
  _$MinusFraudModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? kdtk = freezed,
    Object? userId = freezed,
    Object? nominal = freezed,
    Object? modus = freezed,
    Object? tanggal = freezed,
    Object? refundStatus = freezed,
    Object? imgBukti = freezed,
    Object? commitment = freezed,
    Object? sanksi = freezed,
    Object? imgSanksi = freezed,
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
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      nominal: freezed == nominal
          ? _value.nominal
          : nominal // ignore: cast_nullable_to_non_nullable
              as double?,
      modus: freezed == modus
          ? _value.modus
          : modus // ignore: cast_nullable_to_non_nullable
              as String?,
      tanggal: freezed == tanggal
          ? _value.tanggal
          : tanggal // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      refundStatus: freezed == refundStatus
          ? _value.refundStatus
          : refundStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      imgBukti: freezed == imgBukti
          ? _value.imgBukti
          : imgBukti // ignore: cast_nullable_to_non_nullable
              as String?,
      commitment: freezed == commitment
          ? _value.commitment
          : commitment // ignore: cast_nullable_to_non_nullable
              as String?,
      sanksi: freezed == sanksi
          ? _value.sanksi
          : sanksi // ignore: cast_nullable_to_non_nullable
              as String?,
      imgSanksi: freezed == imgSanksi
          ? _value.imgSanksi
          : imgSanksi // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MinusFraudModelCopyWith<$Res>
    implements $MinusFraudModelCopyWith<$Res> {
  factory _$$_MinusFraudModelCopyWith(
          _$_MinusFraudModel value, $Res Function(_$_MinusFraudModel) then) =
      __$$_MinusFraudModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? kdtk,
      @JsonKey(name: "user_id") String? userId,
      double? nominal,
      String? modus,
      DateTime? tanggal,
      @JsonKey(name: "status_refund") String? refundStatus,
      @JsonKey(name: "image_refund") String? imgBukti,
      @JsonKey(name: "komitment") String? commitment,
      String? sanksi,
      @JsonKey(name: "image_sanksi") String? imgSanksi});
}

/// @nodoc
class __$$_MinusFraudModelCopyWithImpl<$Res>
    extends _$MinusFraudModelCopyWithImpl<$Res, _$_MinusFraudModel>
    implements _$$_MinusFraudModelCopyWith<$Res> {
  __$$_MinusFraudModelCopyWithImpl(
      _$_MinusFraudModel _value, $Res Function(_$_MinusFraudModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? kdtk = freezed,
    Object? userId = freezed,
    Object? nominal = freezed,
    Object? modus = freezed,
    Object? tanggal = freezed,
    Object? refundStatus = freezed,
    Object? imgBukti = freezed,
    Object? commitment = freezed,
    Object? sanksi = freezed,
    Object? imgSanksi = freezed,
  }) {
    return _then(_$_MinusFraudModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      kdtk: freezed == kdtk
          ? _value.kdtk
          : kdtk // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      nominal: freezed == nominal
          ? _value.nominal
          : nominal // ignore: cast_nullable_to_non_nullable
              as double?,
      modus: freezed == modus
          ? _value.modus
          : modus // ignore: cast_nullable_to_non_nullable
              as String?,
      tanggal: freezed == tanggal
          ? _value.tanggal
          : tanggal // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      refundStatus: freezed == refundStatus
          ? _value.refundStatus
          : refundStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      imgBukti: freezed == imgBukti
          ? _value.imgBukti
          : imgBukti // ignore: cast_nullable_to_non_nullable
              as String?,
      commitment: freezed == commitment
          ? _value.commitment
          : commitment // ignore: cast_nullable_to_non_nullable
              as String?,
      sanksi: freezed == sanksi
          ? _value.sanksi
          : sanksi // ignore: cast_nullable_to_non_nullable
              as String?,
      imgSanksi: freezed == imgSanksi
          ? _value.imgSanksi
          : imgSanksi // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MinusFraudModel implements _MinusFraudModel {
  const _$_MinusFraudModel(
      {this.id,
      this.kdtk,
      @JsonKey(name: "user_id") this.userId,
      this.nominal,
      this.modus,
      this.tanggal,
      @JsonKey(name: "status_refund") this.refundStatus,
      @JsonKey(name: "image_refund") this.imgBukti,
      @JsonKey(name: "komitment") this.commitment,
      this.sanksi,
      @JsonKey(name: "image_sanksi") this.imgSanksi});

  factory _$_MinusFraudModel.fromJson(Map<String, dynamic> json) =>
      _$$_MinusFraudModelFromJson(json);

  @override
  final int? id;
  @override
  final String? kdtk;
  @override
  @JsonKey(name: "user_id")
  final String? userId;
  @override
  final double? nominal;
  @override
  final String? modus;
  @override
  final DateTime? tanggal;
  @override
  @JsonKey(name: "status_refund")
  final String? refundStatus;
  @override
  @JsonKey(name: "image_refund")
  final String? imgBukti;
  @override
  @JsonKey(name: "komitment")
  final String? commitment;
  @override
  final String? sanksi;
  @override
  @JsonKey(name: "image_sanksi")
  final String? imgSanksi;

  @override
  String toString() {
    return 'MinusFraudModel(id: $id, kdtk: $kdtk, userId: $userId, nominal: $nominal, modus: $modus, tanggal: $tanggal, refundStatus: $refundStatus, imgBukti: $imgBukti, commitment: $commitment, sanksi: $sanksi, imgSanksi: $imgSanksi)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MinusFraudModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.kdtk, kdtk) || other.kdtk == kdtk) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.nominal, nominal) || other.nominal == nominal) &&
            (identical(other.modus, modus) || other.modus == modus) &&
            (identical(other.tanggal, tanggal) || other.tanggal == tanggal) &&
            (identical(other.refundStatus, refundStatus) ||
                other.refundStatus == refundStatus) &&
            (identical(other.imgBukti, imgBukti) ||
                other.imgBukti == imgBukti) &&
            (identical(other.commitment, commitment) ||
                other.commitment == commitment) &&
            (identical(other.sanksi, sanksi) || other.sanksi == sanksi) &&
            (identical(other.imgSanksi, imgSanksi) ||
                other.imgSanksi == imgSanksi));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, kdtk, userId, nominal, modus,
      tanggal, refundStatus, imgBukti, commitment, sanksi, imgSanksi);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MinusFraudModelCopyWith<_$_MinusFraudModel> get copyWith =>
      __$$_MinusFraudModelCopyWithImpl<_$_MinusFraudModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MinusFraudModelToJson(
      this,
    );
  }
}

abstract class _MinusFraudModel implements MinusFraudModel {
  const factory _MinusFraudModel(
          {final int? id,
          final String? kdtk,
          @JsonKey(name: "user_id") final String? userId,
          final double? nominal,
          final String? modus,
          final DateTime? tanggal,
          @JsonKey(name: "status_refund") final String? refundStatus,
          @JsonKey(name: "image_refund") final String? imgBukti,
          @JsonKey(name: "komitment") final String? commitment,
          final String? sanksi,
          @JsonKey(name: "image_sanksi") final String? imgSanksi}) =
      _$_MinusFraudModel;

  factory _MinusFraudModel.fromJson(Map<String, dynamic> json) =
      _$_MinusFraudModel.fromJson;

  @override
  int? get id;
  @override
  String? get kdtk;
  @override
  @JsonKey(name: "user_id")
  String? get userId;
  @override
  double? get nominal;
  @override
  String? get modus;
  @override
  DateTime? get tanggal;
  @override
  @JsonKey(name: "status_refund")
  String? get refundStatus;
  @override
  @JsonKey(name: "image_refund")
  String? get imgBukti;
  @override
  @JsonKey(name: "komitment")
  String? get commitment;
  @override
  String? get sanksi;
  @override
  @JsonKey(name: "image_sanksi")
  String? get imgSanksi;
  @override
  @JsonKey(ignore: true)
  _$$_MinusFraudModelCopyWith<_$_MinusFraudModel> get copyWith =>
      throw _privateConstructorUsedError;
}

MinusRrakModel _$MinusRrakModelFromJson(Map<String, dynamic> json) {
  return _MinusRrakModel.fromJson(json);
}

/// @nodoc
mixin _$MinusRrakModel {
  int? get id => throw _privateConstructorUsedError;
  String? get kdtk => throw _privateConstructorUsedError;
  String? get jenis => throw _privateConstructorUsedError;
  double? get nominal => throw _privateConstructorUsedError;
  @JsonKey(name: "image_nota")
  String? get imgNota => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MinusRrakModelCopyWith<MinusRrakModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MinusRrakModelCopyWith<$Res> {
  factory $MinusRrakModelCopyWith(
          MinusRrakModel value, $Res Function(MinusRrakModel) then) =
      _$MinusRrakModelCopyWithImpl<$Res, MinusRrakModel>;
  @useResult
  $Res call(
      {int? id,
      String? kdtk,
      String? jenis,
      double? nominal,
      @JsonKey(name: "image_nota") String? imgNota});
}

/// @nodoc
class _$MinusRrakModelCopyWithImpl<$Res, $Val extends MinusRrakModel>
    implements $MinusRrakModelCopyWith<$Res> {
  _$MinusRrakModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? kdtk = freezed,
    Object? jenis = freezed,
    Object? nominal = freezed,
    Object? imgNota = freezed,
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
      jenis: freezed == jenis
          ? _value.jenis
          : jenis // ignore: cast_nullable_to_non_nullable
              as String?,
      nominal: freezed == nominal
          ? _value.nominal
          : nominal // ignore: cast_nullable_to_non_nullable
              as double?,
      imgNota: freezed == imgNota
          ? _value.imgNota
          : imgNota // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MinusRrakModelCopyWith<$Res>
    implements $MinusRrakModelCopyWith<$Res> {
  factory _$$_MinusRrakModelCopyWith(
          _$_MinusRrakModel value, $Res Function(_$_MinusRrakModel) then) =
      __$$_MinusRrakModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? kdtk,
      String? jenis,
      double? nominal,
      @JsonKey(name: "image_nota") String? imgNota});
}

/// @nodoc
class __$$_MinusRrakModelCopyWithImpl<$Res>
    extends _$MinusRrakModelCopyWithImpl<$Res, _$_MinusRrakModel>
    implements _$$_MinusRrakModelCopyWith<$Res> {
  __$$_MinusRrakModelCopyWithImpl(
      _$_MinusRrakModel _value, $Res Function(_$_MinusRrakModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? kdtk = freezed,
    Object? jenis = freezed,
    Object? nominal = freezed,
    Object? imgNota = freezed,
  }) {
    return _then(_$_MinusRrakModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      kdtk: freezed == kdtk
          ? _value.kdtk
          : kdtk // ignore: cast_nullable_to_non_nullable
              as String?,
      jenis: freezed == jenis
          ? _value.jenis
          : jenis // ignore: cast_nullable_to_non_nullable
              as String?,
      nominal: freezed == nominal
          ? _value.nominal
          : nominal // ignore: cast_nullable_to_non_nullable
              as double?,
      imgNota: freezed == imgNota
          ? _value.imgNota
          : imgNota // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MinusRrakModel implements _MinusRrakModel {
  const _$_MinusRrakModel(
      {this.id,
      this.kdtk,
      this.jenis,
      this.nominal,
      @JsonKey(name: "image_nota") this.imgNota});

  factory _$_MinusRrakModel.fromJson(Map<String, dynamic> json) =>
      _$$_MinusRrakModelFromJson(json);

  @override
  final int? id;
  @override
  final String? kdtk;
  @override
  final String? jenis;
  @override
  final double? nominal;
  @override
  @JsonKey(name: "image_nota")
  final String? imgNota;

  @override
  String toString() {
    return 'MinusRrakModel(id: $id, kdtk: $kdtk, jenis: $jenis, nominal: $nominal, imgNota: $imgNota)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MinusRrakModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.kdtk, kdtk) || other.kdtk == kdtk) &&
            (identical(other.jenis, jenis) || other.jenis == jenis) &&
            (identical(other.nominal, nominal) || other.nominal == nominal) &&
            (identical(other.imgNota, imgNota) || other.imgNota == imgNota));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, kdtk, jenis, nominal, imgNota);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MinusRrakModelCopyWith<_$_MinusRrakModel> get copyWith =>
      __$$_MinusRrakModelCopyWithImpl<_$_MinusRrakModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MinusRrakModelToJson(
      this,
    );
  }
}

abstract class _MinusRrakModel implements MinusRrakModel {
  const factory _MinusRrakModel(
      {final int? id,
      final String? kdtk,
      final String? jenis,
      final double? nominal,
      @JsonKey(name: "image_nota") final String? imgNota}) = _$_MinusRrakModel;

  factory _MinusRrakModel.fromJson(Map<String, dynamic> json) =
      _$_MinusRrakModel.fromJson;

  @override
  int? get id;
  @override
  String? get kdtk;
  @override
  String? get jenis;
  @override
  double? get nominal;
  @override
  @JsonKey(name: "image_nota")
  String? get imgNota;
  @override
  @JsonKey(ignore: true)
  _$$_MinusRrakModelCopyWith<_$_MinusRrakModel> get copyWith =>
      throw _privateConstructorUsedError;
}

MinusVarianModel _$MinusVarianModelFromJson(Map<String, dynamic> json) {
  return _MinusVarianModel.fromJson(json);
}

/// @nodoc
mixin _$MinusVarianModel {
  int? get id => throw _privateConstructorUsedError;
  String? get kdtk => throw _privateConstructorUsedError;
  DateTime? get tanggal => throw _privateConstructorUsedError;
  double? get nominal => throw _privateConstructorUsedError;
  @JsonKey(name: "status_varian")
  String? get statusVarian => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MinusVarianModelCopyWith<MinusVarianModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MinusVarianModelCopyWith<$Res> {
  factory $MinusVarianModelCopyWith(
          MinusVarianModel value, $Res Function(MinusVarianModel) then) =
      _$MinusVarianModelCopyWithImpl<$Res, MinusVarianModel>;
  @useResult
  $Res call(
      {int? id,
      String? kdtk,
      DateTime? tanggal,
      double? nominal,
      @JsonKey(name: "status_varian") String? statusVarian});
}

/// @nodoc
class _$MinusVarianModelCopyWithImpl<$Res, $Val extends MinusVarianModel>
    implements $MinusVarianModelCopyWith<$Res> {
  _$MinusVarianModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? kdtk = freezed,
    Object? tanggal = freezed,
    Object? nominal = freezed,
    Object? statusVarian = freezed,
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
      tanggal: freezed == tanggal
          ? _value.tanggal
          : tanggal // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      nominal: freezed == nominal
          ? _value.nominal
          : nominal // ignore: cast_nullable_to_non_nullable
              as double?,
      statusVarian: freezed == statusVarian
          ? _value.statusVarian
          : statusVarian // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MinusVarianModelCopyWith<$Res>
    implements $MinusVarianModelCopyWith<$Res> {
  factory _$$_MinusVarianModelCopyWith(
          _$_MinusVarianModel value, $Res Function(_$_MinusVarianModel) then) =
      __$$_MinusVarianModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? kdtk,
      DateTime? tanggal,
      double? nominal,
      @JsonKey(name: "status_varian") String? statusVarian});
}

/// @nodoc
class __$$_MinusVarianModelCopyWithImpl<$Res>
    extends _$MinusVarianModelCopyWithImpl<$Res, _$_MinusVarianModel>
    implements _$$_MinusVarianModelCopyWith<$Res> {
  __$$_MinusVarianModelCopyWithImpl(
      _$_MinusVarianModel _value, $Res Function(_$_MinusVarianModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? kdtk = freezed,
    Object? tanggal = freezed,
    Object? nominal = freezed,
    Object? statusVarian = freezed,
  }) {
    return _then(_$_MinusVarianModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      kdtk: freezed == kdtk
          ? _value.kdtk
          : kdtk // ignore: cast_nullable_to_non_nullable
              as String?,
      tanggal: freezed == tanggal
          ? _value.tanggal
          : tanggal // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      nominal: freezed == nominal
          ? _value.nominal
          : nominal // ignore: cast_nullable_to_non_nullable
              as double?,
      statusVarian: freezed == statusVarian
          ? _value.statusVarian
          : statusVarian // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MinusVarianModel implements _MinusVarianModel {
  const _$_MinusVarianModel(
      {this.id,
      this.kdtk,
      this.tanggal,
      this.nominal,
      @JsonKey(name: "status_varian") this.statusVarian});

  factory _$_MinusVarianModel.fromJson(Map<String, dynamic> json) =>
      _$$_MinusVarianModelFromJson(json);

  @override
  final int? id;
  @override
  final String? kdtk;
  @override
  final DateTime? tanggal;
  @override
  final double? nominal;
  @override
  @JsonKey(name: "status_varian")
  final String? statusVarian;

  @override
  String toString() {
    return 'MinusVarianModel(id: $id, kdtk: $kdtk, tanggal: $tanggal, nominal: $nominal, statusVarian: $statusVarian)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MinusVarianModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.kdtk, kdtk) || other.kdtk == kdtk) &&
            (identical(other.tanggal, tanggal) || other.tanggal == tanggal) &&
            (identical(other.nominal, nominal) || other.nominal == nominal) &&
            (identical(other.statusVarian, statusVarian) ||
                other.statusVarian == statusVarian));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, kdtk, tanggal, nominal, statusVarian);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MinusVarianModelCopyWith<_$_MinusVarianModel> get copyWith =>
      __$$_MinusVarianModelCopyWithImpl<_$_MinusVarianModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MinusVarianModelToJson(
      this,
    );
  }
}

abstract class _MinusVarianModel implements MinusVarianModel {
  const factory _MinusVarianModel(
          {final int? id,
          final String? kdtk,
          final DateTime? tanggal,
          final double? nominal,
          @JsonKey(name: "status_varian") final String? statusVarian}) =
      _$_MinusVarianModel;

  factory _MinusVarianModel.fromJson(Map<String, dynamic> json) =
      _$_MinusVarianModel.fromJson;

  @override
  int? get id;
  @override
  String? get kdtk;
  @override
  DateTime? get tanggal;
  @override
  double? get nominal;
  @override
  @JsonKey(name: "status_varian")
  String? get statusVarian;
  @override
  @JsonKey(ignore: true)
  _$$_MinusVarianModelCopyWith<_$_MinusVarianModel> get copyWith =>
      throw _privateConstructorUsedError;
}

MinusOtherModel _$MinusOtherModelFromJson(Map<String, dynamic> json) {
  return _MinusOtherModel.fromJson(json);
}

/// @nodoc
mixin _$MinusOtherModel {
  int? get id => throw _privateConstructorUsedError;
  String? get kdtk => throw _privateConstructorUsedError;
  double? get nominal => throw _privateConstructorUsedError;
  String? get keterangan => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MinusOtherModelCopyWith<MinusOtherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MinusOtherModelCopyWith<$Res> {
  factory $MinusOtherModelCopyWith(
          MinusOtherModel value, $Res Function(MinusOtherModel) then) =
      _$MinusOtherModelCopyWithImpl<$Res, MinusOtherModel>;
  @useResult
  $Res call({int? id, String? kdtk, double? nominal, String? keterangan});
}

/// @nodoc
class _$MinusOtherModelCopyWithImpl<$Res, $Val extends MinusOtherModel>
    implements $MinusOtherModelCopyWith<$Res> {
  _$MinusOtherModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? kdtk = freezed,
    Object? nominal = freezed,
    Object? keterangan = freezed,
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
      nominal: freezed == nominal
          ? _value.nominal
          : nominal // ignore: cast_nullable_to_non_nullable
              as double?,
      keterangan: freezed == keterangan
          ? _value.keterangan
          : keterangan // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MinusOtherModelCopyWith<$Res>
    implements $MinusOtherModelCopyWith<$Res> {
  factory _$$_MinusOtherModelCopyWith(
          _$_MinusOtherModel value, $Res Function(_$_MinusOtherModel) then) =
      __$$_MinusOtherModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? kdtk, double? nominal, String? keterangan});
}

/// @nodoc
class __$$_MinusOtherModelCopyWithImpl<$Res>
    extends _$MinusOtherModelCopyWithImpl<$Res, _$_MinusOtherModel>
    implements _$$_MinusOtherModelCopyWith<$Res> {
  __$$_MinusOtherModelCopyWithImpl(
      _$_MinusOtherModel _value, $Res Function(_$_MinusOtherModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? kdtk = freezed,
    Object? nominal = freezed,
    Object? keterangan = freezed,
  }) {
    return _then(_$_MinusOtherModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      kdtk: freezed == kdtk
          ? _value.kdtk
          : kdtk // ignore: cast_nullable_to_non_nullable
              as String?,
      nominal: freezed == nominal
          ? _value.nominal
          : nominal // ignore: cast_nullable_to_non_nullable
              as double?,
      keterangan: freezed == keterangan
          ? _value.keterangan
          : keterangan // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MinusOtherModel implements _MinusOtherModel {
  const _$_MinusOtherModel({this.id, this.kdtk, this.nominal, this.keterangan});

  factory _$_MinusOtherModel.fromJson(Map<String, dynamic> json) =>
      _$$_MinusOtherModelFromJson(json);

  @override
  final int? id;
  @override
  final String? kdtk;
  @override
  final double? nominal;
  @override
  final String? keterangan;

  @override
  String toString() {
    return 'MinusOtherModel(id: $id, kdtk: $kdtk, nominal: $nominal, keterangan: $keterangan)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MinusOtherModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.kdtk, kdtk) || other.kdtk == kdtk) &&
            (identical(other.nominal, nominal) || other.nominal == nominal) &&
            (identical(other.keterangan, keterangan) ||
                other.keterangan == keterangan));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, kdtk, nominal, keterangan);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MinusOtherModelCopyWith<_$_MinusOtherModel> get copyWith =>
      __$$_MinusOtherModelCopyWithImpl<_$_MinusOtherModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MinusOtherModelToJson(
      this,
    );
  }
}

abstract class _MinusOtherModel implements MinusOtherModel {
  const factory _MinusOtherModel(
      {final int? id,
      final String? kdtk,
      final double? nominal,
      final String? keterangan}) = _$_MinusOtherModel;

  factory _MinusOtherModel.fromJson(Map<String, dynamic> json) =
      _$_MinusOtherModel.fromJson;

  @override
  int? get id;
  @override
  String? get kdtk;
  @override
  double? get nominal;
  @override
  String? get keterangan;
  @override
  @JsonKey(ignore: true)
  _$$_MinusOtherModelCopyWith<_$_MinusOtherModel> get copyWith =>
      throw _privateConstructorUsedError;
}
