// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'master_tenant_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListMasterTenantModel _$ListMasterTenantModelFromJson(
    Map<String, dynamic> json) {
  return _ListMasterTenantModel.fromJson(json);
}

/// @nodoc
mixin _$ListMasterTenantModel {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<MasterTenantModel>? get master => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListMasterTenantModelCopyWith<ListMasterTenantModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListMasterTenantModelCopyWith<$Res> {
  factory $ListMasterTenantModelCopyWith(ListMasterTenantModel value,
          $Res Function(ListMasterTenantModel) then) =
      _$ListMasterTenantModelCopyWithImpl<$Res, ListMasterTenantModel>;
  @useResult
  $Res call(
      {int? code,
      String? message,
      @JsonKey(name: "data") List<MasterTenantModel>? master});
}

/// @nodoc
class _$ListMasterTenantModelCopyWithImpl<$Res,
        $Val extends ListMasterTenantModel>
    implements $ListMasterTenantModelCopyWith<$Res> {
  _$ListMasterTenantModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? master = freezed,
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
      master: freezed == master
          ? _value.master
          : master // ignore: cast_nullable_to_non_nullable
              as List<MasterTenantModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ListMasterTenantModelCopyWith<$Res>
    implements $ListMasterTenantModelCopyWith<$Res> {
  factory _$$_ListMasterTenantModelCopyWith(_$_ListMasterTenantModel value,
          $Res Function(_$_ListMasterTenantModel) then) =
      __$$_ListMasterTenantModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? code,
      String? message,
      @JsonKey(name: "data") List<MasterTenantModel>? master});
}

/// @nodoc
class __$$_ListMasterTenantModelCopyWithImpl<$Res>
    extends _$ListMasterTenantModelCopyWithImpl<$Res, _$_ListMasterTenantModel>
    implements _$$_ListMasterTenantModelCopyWith<$Res> {
  __$$_ListMasterTenantModelCopyWithImpl(_$_ListMasterTenantModel _value,
      $Res Function(_$_ListMasterTenantModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? master = freezed,
  }) {
    return _then(_$_ListMasterTenantModel(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      master: freezed == master
          ? _value._master
          : master // ignore: cast_nullable_to_non_nullable
              as List<MasterTenantModel>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ListMasterTenantModel implements _ListMasterTenantModel {
  const _$_ListMasterTenantModel(
      {this.code,
      this.message,
      @JsonKey(name: "data") final List<MasterTenantModel>? master})
      : _master = master;

  factory _$_ListMasterTenantModel.fromJson(Map<String, dynamic> json) =>
      _$$_ListMasterTenantModelFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  final List<MasterTenantModel>? _master;
  @override
  @JsonKey(name: "data")
  List<MasterTenantModel>? get master {
    final value = _master;
    if (value == null) return null;
    if (_master is EqualUnmodifiableListView) return _master;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ListMasterTenantModel(code: $code, message: $message, master: $master)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListMasterTenantModel &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._master, _master));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, code, message, const DeepCollectionEquality().hash(_master));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListMasterTenantModelCopyWith<_$_ListMasterTenantModel> get copyWith =>
      __$$_ListMasterTenantModelCopyWithImpl<_$_ListMasterTenantModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListMasterTenantModelToJson(
      this,
    );
  }
}

abstract class _ListMasterTenantModel implements ListMasterTenantModel {
  const factory _ListMasterTenantModel(
          {final int? code,
          final String? message,
          @JsonKey(name: "data") final List<MasterTenantModel>? master}) =
      _$_ListMasterTenantModel;

  factory _ListMasterTenantModel.fromJson(Map<String, dynamic> json) =
      _$_ListMasterTenantModel.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  @JsonKey(name: "data")
  List<MasterTenantModel>? get master;
  @override
  @JsonKey(ignore: true)
  _$$_ListMasterTenantModelCopyWith<_$_ListMasterTenantModel> get copyWith =>
      throw _privateConstructorUsedError;
}

MasterTenantModel _$MasterTenantModelFromJson(Map<String, dynamic> json) {
  return _MasterTenantModel.fromJson(json);
}

/// @nodoc
mixin _$MasterTenantModel {
  String? get kdcab => throw _privateConstructorUsedError;
  String? get kdtk => throw _privateConstructorUsedError;
  @JsonKey(name: "id_tenant")
  String? get idTenant => throw _privateConstructorUsedError;
  @JsonKey(name: "jenis_produk")
  String? get jenisProduk => throw _privateConstructorUsedError;
  @JsonKey(name: "nama_penyewa")
  String? get penyewa => throw _privateConstructorUsedError;
  @JsonKey(name: "no_psm")
  String? get noPsm => throw _privateConstructorUsedError;
  @JsonKey(name: "sewa_gerobak")
  double? get sewaGerobak => throw _privateConstructorUsedError;
  @JsonKey(name: "sewa_psm")
  double? get sewaByPsm => throw _privateConstructorUsedError;
  @JsonKey(name: "sewa_bayar")
  double? get sewaBayar => throw _privateConstructorUsedError;
  @JsonKey(name: "bulan")
  String? get bulan => throw _privateConstructorUsedError;
  @JsonKey(name: "nota_bayar")
  String? get notaPembayaran => throw _privateConstructorUsedError;
  @JsonKey(name: "tanggal_bayar")
  DateTime? get tanggalBayar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MasterTenantModelCopyWith<MasterTenantModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MasterTenantModelCopyWith<$Res> {
  factory $MasterTenantModelCopyWith(
          MasterTenantModel value, $Res Function(MasterTenantModel) then) =
      _$MasterTenantModelCopyWithImpl<$Res, MasterTenantModel>;
  @useResult
  $Res call(
      {String? kdcab,
      String? kdtk,
      @JsonKey(name: "id_tenant") String? idTenant,
      @JsonKey(name: "jenis_produk") String? jenisProduk,
      @JsonKey(name: "nama_penyewa") String? penyewa,
      @JsonKey(name: "no_psm") String? noPsm,
      @JsonKey(name: "sewa_gerobak") double? sewaGerobak,
      @JsonKey(name: "sewa_psm") double? sewaByPsm,
      @JsonKey(name: "sewa_bayar") double? sewaBayar,
      @JsonKey(name: "bulan") String? bulan,
      @JsonKey(name: "nota_bayar") String? notaPembayaran,
      @JsonKey(name: "tanggal_bayar") DateTime? tanggalBayar});
}

/// @nodoc
class _$MasterTenantModelCopyWithImpl<$Res, $Val extends MasterTenantModel>
    implements $MasterTenantModelCopyWith<$Res> {
  _$MasterTenantModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kdcab = freezed,
    Object? kdtk = freezed,
    Object? idTenant = freezed,
    Object? jenisProduk = freezed,
    Object? penyewa = freezed,
    Object? noPsm = freezed,
    Object? sewaGerobak = freezed,
    Object? sewaByPsm = freezed,
    Object? sewaBayar = freezed,
    Object? bulan = freezed,
    Object? notaPembayaran = freezed,
    Object? tanggalBayar = freezed,
  }) {
    return _then(_value.copyWith(
      kdcab: freezed == kdcab
          ? _value.kdcab
          : kdcab // ignore: cast_nullable_to_non_nullable
              as String?,
      kdtk: freezed == kdtk
          ? _value.kdtk
          : kdtk // ignore: cast_nullable_to_non_nullable
              as String?,
      idTenant: freezed == idTenant
          ? _value.idTenant
          : idTenant // ignore: cast_nullable_to_non_nullable
              as String?,
      jenisProduk: freezed == jenisProduk
          ? _value.jenisProduk
          : jenisProduk // ignore: cast_nullable_to_non_nullable
              as String?,
      penyewa: freezed == penyewa
          ? _value.penyewa
          : penyewa // ignore: cast_nullable_to_non_nullable
              as String?,
      noPsm: freezed == noPsm
          ? _value.noPsm
          : noPsm // ignore: cast_nullable_to_non_nullable
              as String?,
      sewaGerobak: freezed == sewaGerobak
          ? _value.sewaGerobak
          : sewaGerobak // ignore: cast_nullable_to_non_nullable
              as double?,
      sewaByPsm: freezed == sewaByPsm
          ? _value.sewaByPsm
          : sewaByPsm // ignore: cast_nullable_to_non_nullable
              as double?,
      sewaBayar: freezed == sewaBayar
          ? _value.sewaBayar
          : sewaBayar // ignore: cast_nullable_to_non_nullable
              as double?,
      bulan: freezed == bulan
          ? _value.bulan
          : bulan // ignore: cast_nullable_to_non_nullable
              as String?,
      notaPembayaran: freezed == notaPembayaran
          ? _value.notaPembayaran
          : notaPembayaran // ignore: cast_nullable_to_non_nullable
              as String?,
      tanggalBayar: freezed == tanggalBayar
          ? _value.tanggalBayar
          : tanggalBayar // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MasterTenantModelCopyWith<$Res>
    implements $MasterTenantModelCopyWith<$Res> {
  factory _$$_MasterTenantModelCopyWith(_$_MasterTenantModel value,
          $Res Function(_$_MasterTenantModel) then) =
      __$$_MasterTenantModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? kdcab,
      String? kdtk,
      @JsonKey(name: "id_tenant") String? idTenant,
      @JsonKey(name: "jenis_produk") String? jenisProduk,
      @JsonKey(name: "nama_penyewa") String? penyewa,
      @JsonKey(name: "no_psm") String? noPsm,
      @JsonKey(name: "sewa_gerobak") double? sewaGerobak,
      @JsonKey(name: "sewa_psm") double? sewaByPsm,
      @JsonKey(name: "sewa_bayar") double? sewaBayar,
      @JsonKey(name: "bulan") String? bulan,
      @JsonKey(name: "nota_bayar") String? notaPembayaran,
      @JsonKey(name: "tanggal_bayar") DateTime? tanggalBayar});
}

/// @nodoc
class __$$_MasterTenantModelCopyWithImpl<$Res>
    extends _$MasterTenantModelCopyWithImpl<$Res, _$_MasterTenantModel>
    implements _$$_MasterTenantModelCopyWith<$Res> {
  __$$_MasterTenantModelCopyWithImpl(
      _$_MasterTenantModel _value, $Res Function(_$_MasterTenantModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kdcab = freezed,
    Object? kdtk = freezed,
    Object? idTenant = freezed,
    Object? jenisProduk = freezed,
    Object? penyewa = freezed,
    Object? noPsm = freezed,
    Object? sewaGerobak = freezed,
    Object? sewaByPsm = freezed,
    Object? sewaBayar = freezed,
    Object? bulan = freezed,
    Object? notaPembayaran = freezed,
    Object? tanggalBayar = freezed,
  }) {
    return _then(_$_MasterTenantModel(
      kdcab: freezed == kdcab
          ? _value.kdcab
          : kdcab // ignore: cast_nullable_to_non_nullable
              as String?,
      kdtk: freezed == kdtk
          ? _value.kdtk
          : kdtk // ignore: cast_nullable_to_non_nullable
              as String?,
      idTenant: freezed == idTenant
          ? _value.idTenant
          : idTenant // ignore: cast_nullable_to_non_nullable
              as String?,
      jenisProduk: freezed == jenisProduk
          ? _value.jenisProduk
          : jenisProduk // ignore: cast_nullable_to_non_nullable
              as String?,
      penyewa: freezed == penyewa
          ? _value.penyewa
          : penyewa // ignore: cast_nullable_to_non_nullable
              as String?,
      noPsm: freezed == noPsm
          ? _value.noPsm
          : noPsm // ignore: cast_nullable_to_non_nullable
              as String?,
      sewaGerobak: freezed == sewaGerobak
          ? _value.sewaGerobak
          : sewaGerobak // ignore: cast_nullable_to_non_nullable
              as double?,
      sewaByPsm: freezed == sewaByPsm
          ? _value.sewaByPsm
          : sewaByPsm // ignore: cast_nullable_to_non_nullable
              as double?,
      sewaBayar: freezed == sewaBayar
          ? _value.sewaBayar
          : sewaBayar // ignore: cast_nullable_to_non_nullable
              as double?,
      bulan: freezed == bulan
          ? _value.bulan
          : bulan // ignore: cast_nullable_to_non_nullable
              as String?,
      notaPembayaran: freezed == notaPembayaran
          ? _value.notaPembayaran
          : notaPembayaran // ignore: cast_nullable_to_non_nullable
              as String?,
      tanggalBayar: freezed == tanggalBayar
          ? _value.tanggalBayar
          : tanggalBayar // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MasterTenantModel implements _MasterTenantModel {
  const _$_MasterTenantModel(
      {this.kdcab,
      this.kdtk,
      @JsonKey(name: "id_tenant") this.idTenant,
      @JsonKey(name: "jenis_produk") this.jenisProduk,
      @JsonKey(name: "nama_penyewa") this.penyewa,
      @JsonKey(name: "no_psm") this.noPsm,
      @JsonKey(name: "sewa_gerobak") this.sewaGerobak,
      @JsonKey(name: "sewa_psm") this.sewaByPsm,
      @JsonKey(name: "sewa_bayar") this.sewaBayar,
      @JsonKey(name: "bulan") this.bulan,
      @JsonKey(name: "nota_bayar") this.notaPembayaran,
      @JsonKey(name: "tanggal_bayar") this.tanggalBayar});

  factory _$_MasterTenantModel.fromJson(Map<String, dynamic> json) =>
      _$$_MasterTenantModelFromJson(json);

  @override
  final String? kdcab;
  @override
  final String? kdtk;
  @override
  @JsonKey(name: "id_tenant")
  final String? idTenant;
  @override
  @JsonKey(name: "jenis_produk")
  final String? jenisProduk;
  @override
  @JsonKey(name: "nama_penyewa")
  final String? penyewa;
  @override
  @JsonKey(name: "no_psm")
  final String? noPsm;
  @override
  @JsonKey(name: "sewa_gerobak")
  final double? sewaGerobak;
  @override
  @JsonKey(name: "sewa_psm")
  final double? sewaByPsm;
  @override
  @JsonKey(name: "sewa_bayar")
  final double? sewaBayar;
  @override
  @JsonKey(name: "bulan")
  final String? bulan;
  @override
  @JsonKey(name: "nota_bayar")
  final String? notaPembayaran;
  @override
  @JsonKey(name: "tanggal_bayar")
  final DateTime? tanggalBayar;

  @override
  String toString() {
    return 'MasterTenantModel(kdcab: $kdcab, kdtk: $kdtk, idTenant: $idTenant, jenisProduk: $jenisProduk, penyewa: $penyewa, noPsm: $noPsm, sewaGerobak: $sewaGerobak, sewaByPsm: $sewaByPsm, sewaBayar: $sewaBayar, bulan: $bulan, notaPembayaran: $notaPembayaran, tanggalBayar: $tanggalBayar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MasterTenantModel &&
            (identical(other.kdcab, kdcab) || other.kdcab == kdcab) &&
            (identical(other.kdtk, kdtk) || other.kdtk == kdtk) &&
            (identical(other.idTenant, idTenant) ||
                other.idTenant == idTenant) &&
            (identical(other.jenisProduk, jenisProduk) ||
                other.jenisProduk == jenisProduk) &&
            (identical(other.penyewa, penyewa) || other.penyewa == penyewa) &&
            (identical(other.noPsm, noPsm) || other.noPsm == noPsm) &&
            (identical(other.sewaGerobak, sewaGerobak) ||
                other.sewaGerobak == sewaGerobak) &&
            (identical(other.sewaByPsm, sewaByPsm) ||
                other.sewaByPsm == sewaByPsm) &&
            (identical(other.sewaBayar, sewaBayar) ||
                other.sewaBayar == sewaBayar) &&
            (identical(other.bulan, bulan) || other.bulan == bulan) &&
            (identical(other.notaPembayaran, notaPembayaran) ||
                other.notaPembayaran == notaPembayaran) &&
            (identical(other.tanggalBayar, tanggalBayar) ||
                other.tanggalBayar == tanggalBayar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      kdcab,
      kdtk,
      idTenant,
      jenisProduk,
      penyewa,
      noPsm,
      sewaGerobak,
      sewaByPsm,
      sewaBayar,
      bulan,
      notaPembayaran,
      tanggalBayar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MasterTenantModelCopyWith<_$_MasterTenantModel> get copyWith =>
      __$$_MasterTenantModelCopyWithImpl<_$_MasterTenantModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MasterTenantModelToJson(
      this,
    );
  }
}

abstract class _MasterTenantModel implements MasterTenantModel {
  const factory _MasterTenantModel(
          {final String? kdcab,
          final String? kdtk,
          @JsonKey(name: "id_tenant") final String? idTenant,
          @JsonKey(name: "jenis_produk") final String? jenisProduk,
          @JsonKey(name: "nama_penyewa") final String? penyewa,
          @JsonKey(name: "no_psm") final String? noPsm,
          @JsonKey(name: "sewa_gerobak") final double? sewaGerobak,
          @JsonKey(name: "sewa_psm") final double? sewaByPsm,
          @JsonKey(name: "sewa_bayar") final double? sewaBayar,
          @JsonKey(name: "bulan") final String? bulan,
          @JsonKey(name: "nota_bayar") final String? notaPembayaran,
          @JsonKey(name: "tanggal_bayar") final DateTime? tanggalBayar}) =
      _$_MasterTenantModel;

  factory _MasterTenantModel.fromJson(Map<String, dynamic> json) =
      _$_MasterTenantModel.fromJson;

  @override
  String? get kdcab;
  @override
  String? get kdtk;
  @override
  @JsonKey(name: "id_tenant")
  String? get idTenant;
  @override
  @JsonKey(name: "jenis_produk")
  String? get jenisProduk;
  @override
  @JsonKey(name: "nama_penyewa")
  String? get penyewa;
  @override
  @JsonKey(name: "no_psm")
  String? get noPsm;
  @override
  @JsonKey(name: "sewa_gerobak")
  double? get sewaGerobak;
  @override
  @JsonKey(name: "sewa_psm")
  double? get sewaByPsm;
  @override
  @JsonKey(name: "sewa_bayar")
  double? get sewaBayar;
  @override
  @JsonKey(name: "bulan")
  String? get bulan;
  @override
  @JsonKey(name: "nota_bayar")
  String? get notaPembayaran;
  @override
  @JsonKey(name: "tanggal_bayar")
  DateTime? get tanggalBayar;
  @override
  @JsonKey(ignore: true)
  _$$_MasterTenantModelCopyWith<_$_MasterTenantModel> get copyWith =>
      throw _privateConstructorUsedError;
}
