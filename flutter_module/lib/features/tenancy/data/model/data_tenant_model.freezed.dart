// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_tenant_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListDataTenantModel _$ListDataTenantModelFromJson(Map<String, dynamic> json) {
  return _ListDataTenantModel.fromJson(json);
}

/// @nodoc
mixin _$ListDataTenantModel {
  @JsonKey(name: "data")
  List<DataTenantModel>? get dataTenants => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListDataTenantModelCopyWith<ListDataTenantModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListDataTenantModelCopyWith<$Res> {
  factory $ListDataTenantModelCopyWith(
          ListDataTenantModel value, $Res Function(ListDataTenantModel) then) =
      _$ListDataTenantModelCopyWithImpl<$Res, ListDataTenantModel>;
  @useResult
  $Res call({@JsonKey(name: "data") List<DataTenantModel>? dataTenants});
}

/// @nodoc
class _$ListDataTenantModelCopyWithImpl<$Res, $Val extends ListDataTenantModel>
    implements $ListDataTenantModelCopyWith<$Res> {
  _$ListDataTenantModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataTenants = freezed,
  }) {
    return _then(_value.copyWith(
      dataTenants: freezed == dataTenants
          ? _value.dataTenants
          : dataTenants // ignore: cast_nullable_to_non_nullable
              as List<DataTenantModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ListDataTenantModelCopyWith<$Res>
    implements $ListDataTenantModelCopyWith<$Res> {
  factory _$$_ListDataTenantModelCopyWith(_$_ListDataTenantModel value,
          $Res Function(_$_ListDataTenantModel) then) =
      __$$_ListDataTenantModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "data") List<DataTenantModel>? dataTenants});
}

/// @nodoc
class __$$_ListDataTenantModelCopyWithImpl<$Res>
    extends _$ListDataTenantModelCopyWithImpl<$Res, _$_ListDataTenantModel>
    implements _$$_ListDataTenantModelCopyWith<$Res> {
  __$$_ListDataTenantModelCopyWithImpl(_$_ListDataTenantModel _value,
      $Res Function(_$_ListDataTenantModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataTenants = freezed,
  }) {
    return _then(_$_ListDataTenantModel(
      dataTenants: freezed == dataTenants
          ? _value._dataTenants
          : dataTenants // ignore: cast_nullable_to_non_nullable
              as List<DataTenantModel>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ListDataTenantModel implements _ListDataTenantModel {
  const _$_ListDataTenantModel(
      {@JsonKey(name: "data") final List<DataTenantModel>? dataTenants})
      : _dataTenants = dataTenants;

  factory _$_ListDataTenantModel.fromJson(Map<String, dynamic> json) =>
      _$$_ListDataTenantModelFromJson(json);

  final List<DataTenantModel>? _dataTenants;
  @override
  @JsonKey(name: "data")
  List<DataTenantModel>? get dataTenants {
    final value = _dataTenants;
    if (value == null) return null;
    if (_dataTenants is EqualUnmodifiableListView) return _dataTenants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ListDataTenantModel(dataTenants: $dataTenants)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListDataTenantModel &&
            const DeepCollectionEquality()
                .equals(other._dataTenants, _dataTenants));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_dataTenants));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListDataTenantModelCopyWith<_$_ListDataTenantModel> get copyWith =>
      __$$_ListDataTenantModelCopyWithImpl<_$_ListDataTenantModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListDataTenantModelToJson(
      this,
    );
  }
}

abstract class _ListDataTenantModel implements ListDataTenantModel {
  const factory _ListDataTenantModel(
          {@JsonKey(name: "data") final List<DataTenantModel>? dataTenants}) =
      _$_ListDataTenantModel;

  factory _ListDataTenantModel.fromJson(Map<String, dynamic> json) =
      _$_ListDataTenantModel.fromJson;

  @override
  @JsonKey(name: "data")
  List<DataTenantModel>? get dataTenants;
  @override
  @JsonKey(ignore: true)
  _$$_ListDataTenantModelCopyWith<_$_ListDataTenantModel> get copyWith =>
      throw _privateConstructorUsedError;
}

DataTenantModel _$DataTenantModelFromJson(Map<String, dynamic> json) {
  return _DataTenantModel.fromJson(json);
}

/// @nodoc
mixin _$DataTenantModel {
  String? get kdtk => throw _privateConstructorUsedError;
  @JsonKey(name: "no_psm")
  String? get noPsm => throw _privateConstructorUsedError;
  @JsonKey(name: "jenis_produk")
  String? get jenisProduk => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active")
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "tenant_image")
  String? get tenantImage => throw _privateConstructorUsedError;
  @JsonKey(name: "store_image")
  String? get storeImage => throw _privateConstructorUsedError;
  @JsonKey(name: "latitude")
  double? get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: "longitude")
  double? get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: "addtime")
  DateTime? get addTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataTenantModelCopyWith<DataTenantModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataTenantModelCopyWith<$Res> {
  factory $DataTenantModelCopyWith(
          DataTenantModel value, $Res Function(DataTenantModel) then) =
      _$DataTenantModelCopyWithImpl<$Res, DataTenantModel>;
  @useResult
  $Res call(
      {String? kdtk,
      @JsonKey(name: "no_psm") String? noPsm,
      @JsonKey(name: "jenis_produk") String? jenisProduk,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "tenant_image") String? tenantImage,
      @JsonKey(name: "store_image") String? storeImage,
      @JsonKey(name: "latitude") double? latitude,
      @JsonKey(name: "longitude") double? longitude,
      @JsonKey(name: "addtime") DateTime? addTime});
}

/// @nodoc
class _$DataTenantModelCopyWithImpl<$Res, $Val extends DataTenantModel>
    implements $DataTenantModelCopyWith<$Res> {
  _$DataTenantModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kdtk = freezed,
    Object? noPsm = freezed,
    Object? jenisProduk = freezed,
    Object? status = freezed,
    Object? isActive = freezed,
    Object? tenantImage = freezed,
    Object? storeImage = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? addTime = freezed,
  }) {
    return _then(_value.copyWith(
      kdtk: freezed == kdtk
          ? _value.kdtk
          : kdtk // ignore: cast_nullable_to_non_nullable
              as String?,
      noPsm: freezed == noPsm
          ? _value.noPsm
          : noPsm // ignore: cast_nullable_to_non_nullable
              as String?,
      jenisProduk: freezed == jenisProduk
          ? _value.jenisProduk
          : jenisProduk // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      tenantImage: freezed == tenantImage
          ? _value.tenantImage
          : tenantImage // ignore: cast_nullable_to_non_nullable
              as String?,
      storeImage: freezed == storeImage
          ? _value.storeImage
          : storeImage // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      addTime: freezed == addTime
          ? _value.addTime
          : addTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataTenantModelCopyWith<$Res>
    implements $DataTenantModelCopyWith<$Res> {
  factory _$$_DataTenantModelCopyWith(
          _$_DataTenantModel value, $Res Function(_$_DataTenantModel) then) =
      __$$_DataTenantModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? kdtk,
      @JsonKey(name: "no_psm") String? noPsm,
      @JsonKey(name: "jenis_produk") String? jenisProduk,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "tenant_image") String? tenantImage,
      @JsonKey(name: "store_image") String? storeImage,
      @JsonKey(name: "latitude") double? latitude,
      @JsonKey(name: "longitude") double? longitude,
      @JsonKey(name: "addtime") DateTime? addTime});
}

/// @nodoc
class __$$_DataTenantModelCopyWithImpl<$Res>
    extends _$DataTenantModelCopyWithImpl<$Res, _$_DataTenantModel>
    implements _$$_DataTenantModelCopyWith<$Res> {
  __$$_DataTenantModelCopyWithImpl(
      _$_DataTenantModel _value, $Res Function(_$_DataTenantModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kdtk = freezed,
    Object? noPsm = freezed,
    Object? jenisProduk = freezed,
    Object? status = freezed,
    Object? isActive = freezed,
    Object? tenantImage = freezed,
    Object? storeImage = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? addTime = freezed,
  }) {
    return _then(_$_DataTenantModel(
      kdtk: freezed == kdtk
          ? _value.kdtk
          : kdtk // ignore: cast_nullable_to_non_nullable
              as String?,
      noPsm: freezed == noPsm
          ? _value.noPsm
          : noPsm // ignore: cast_nullable_to_non_nullable
              as String?,
      jenisProduk: freezed == jenisProduk
          ? _value.jenisProduk
          : jenisProduk // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      tenantImage: freezed == tenantImage
          ? _value.tenantImage
          : tenantImage // ignore: cast_nullable_to_non_nullable
              as String?,
      storeImage: freezed == storeImage
          ? _value.storeImage
          : storeImage // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      addTime: freezed == addTime
          ? _value.addTime
          : addTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_DataTenantModel implements _DataTenantModel {
  const _$_DataTenantModel(
      {this.kdtk,
      @JsonKey(name: "no_psm") this.noPsm,
      @JsonKey(name: "jenis_produk") this.jenisProduk,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "is_active") this.isActive,
      @JsonKey(name: "tenant_image") this.tenantImage,
      @JsonKey(name: "store_image") this.storeImage,
      @JsonKey(name: "latitude") this.latitude,
      @JsonKey(name: "longitude") this.longitude,
      @JsonKey(name: "addtime") this.addTime});

  factory _$_DataTenantModel.fromJson(Map<String, dynamic> json) =>
      _$$_DataTenantModelFromJson(json);

  @override
  final String? kdtk;
  @override
  @JsonKey(name: "no_psm")
  final String? noPsm;
  @override
  @JsonKey(name: "jenis_produk")
  final String? jenisProduk;
  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "is_active")
  final bool? isActive;
  @override
  @JsonKey(name: "tenant_image")
  final String? tenantImage;
  @override
  @JsonKey(name: "store_image")
  final String? storeImage;
  @override
  @JsonKey(name: "latitude")
  final double? latitude;
  @override
  @JsonKey(name: "longitude")
  final double? longitude;
  @override
  @JsonKey(name: "addtime")
  final DateTime? addTime;

  @override
  String toString() {
    return 'DataTenantModel(kdtk: $kdtk, noPsm: $noPsm, jenisProduk: $jenisProduk, status: $status, isActive: $isActive, tenantImage: $tenantImage, storeImage: $storeImage, latitude: $latitude, longitude: $longitude, addTime: $addTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataTenantModel &&
            (identical(other.kdtk, kdtk) || other.kdtk == kdtk) &&
            (identical(other.noPsm, noPsm) || other.noPsm == noPsm) &&
            (identical(other.jenisProduk, jenisProduk) ||
                other.jenisProduk == jenisProduk) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.tenantImage, tenantImage) ||
                other.tenantImage == tenantImage) &&
            (identical(other.storeImage, storeImage) ||
                other.storeImage == storeImage) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.addTime, addTime) || other.addTime == addTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, kdtk, noPsm, jenisProduk, status,
      isActive, tenantImage, storeImage, latitude, longitude, addTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataTenantModelCopyWith<_$_DataTenantModel> get copyWith =>
      __$$_DataTenantModelCopyWithImpl<_$_DataTenantModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataTenantModelToJson(
      this,
    );
  }
}

abstract class _DataTenantModel implements DataTenantModel {
  const factory _DataTenantModel(
      {final String? kdtk,
      @JsonKey(name: "no_psm") final String? noPsm,
      @JsonKey(name: "jenis_produk") final String? jenisProduk,
      @JsonKey(name: "status") final String? status,
      @JsonKey(name: "is_active") final bool? isActive,
      @JsonKey(name: "tenant_image") final String? tenantImage,
      @JsonKey(name: "store_image") final String? storeImage,
      @JsonKey(name: "latitude") final double? latitude,
      @JsonKey(name: "longitude") final double? longitude,
      @JsonKey(name: "addtime") final DateTime? addTime}) = _$_DataTenantModel;

  factory _DataTenantModel.fromJson(Map<String, dynamic> json) =
      _$_DataTenantModel.fromJson;

  @override
  String? get kdtk;
  @override
  @JsonKey(name: "no_psm")
  String? get noPsm;
  @override
  @JsonKey(name: "jenis_produk")
  String? get jenisProduk;
  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "is_active")
  bool? get isActive;
  @override
  @JsonKey(name: "tenant_image")
  String? get tenantImage;
  @override
  @JsonKey(name: "store_image")
  String? get storeImage;
  @override
  @JsonKey(name: "latitude")
  double? get latitude;
  @override
  @JsonKey(name: "longitude")
  double? get longitude;
  @override
  @JsonKey(name: "addtime")
  DateTime? get addTime;
  @override
  @JsonKey(ignore: true)
  _$$_DataTenantModelCopyWith<_$_DataTenantModel> get copyWith =>
      throw _privateConstructorUsedError;
}
