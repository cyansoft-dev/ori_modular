// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_audit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DataAudit {
  String? get kdtk => throw _privateConstructorUsedError;
  AuditStatus get status => throw _privateConstructorUsedError;
  DanaCurrent? get danaCurrent => throw _privateConstructorUsedError;
  DanaLastDay? get danaLastDay => throw _privateConstructorUsedError;
  DanaKas? get danaKas => throw _privateConstructorUsedError;
  DanaRrak? get danaRrak => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DataAuditCopyWith<DataAudit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataAuditCopyWith<$Res> {
  factory $DataAuditCopyWith(DataAudit value, $Res Function(DataAudit) then) =
      _$DataAuditCopyWithImpl<$Res, DataAudit>;
  @useResult
  $Res call(
      {String? kdtk,
      AuditStatus status,
      DanaCurrent? danaCurrent,
      DanaLastDay? danaLastDay,
      DanaKas? danaKas,
      DanaRrak? danaRrak});

  $DanaCurrentCopyWith<$Res>? get danaCurrent;
  $DanaLastDayCopyWith<$Res>? get danaLastDay;
  $DanaKasCopyWith<$Res>? get danaKas;
  $DanaRrakCopyWith<$Res>? get danaRrak;
}

/// @nodoc
class _$DataAuditCopyWithImpl<$Res, $Val extends DataAudit>
    implements $DataAuditCopyWith<$Res> {
  _$DataAuditCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kdtk = freezed,
    Object? status = null,
    Object? danaCurrent = freezed,
    Object? danaLastDay = freezed,
    Object? danaKas = freezed,
    Object? danaRrak = freezed,
  }) {
    return _then(_value.copyWith(
      kdtk: freezed == kdtk
          ? _value.kdtk
          : kdtk // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuditStatus,
      danaCurrent: freezed == danaCurrent
          ? _value.danaCurrent
          : danaCurrent // ignore: cast_nullable_to_non_nullable
              as DanaCurrent?,
      danaLastDay: freezed == danaLastDay
          ? _value.danaLastDay
          : danaLastDay // ignore: cast_nullable_to_non_nullable
              as DanaLastDay?,
      danaKas: freezed == danaKas
          ? _value.danaKas
          : danaKas // ignore: cast_nullable_to_non_nullable
              as DanaKas?,
      danaRrak: freezed == danaRrak
          ? _value.danaRrak
          : danaRrak // ignore: cast_nullable_to_non_nullable
              as DanaRrak?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DanaCurrentCopyWith<$Res>? get danaCurrent {
    if (_value.danaCurrent == null) {
      return null;
    }

    return $DanaCurrentCopyWith<$Res>(_value.danaCurrent!, (value) {
      return _then(_value.copyWith(danaCurrent: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DanaLastDayCopyWith<$Res>? get danaLastDay {
    if (_value.danaLastDay == null) {
      return null;
    }

    return $DanaLastDayCopyWith<$Res>(_value.danaLastDay!, (value) {
      return _then(_value.copyWith(danaLastDay: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DanaKasCopyWith<$Res>? get danaKas {
    if (_value.danaKas == null) {
      return null;
    }

    return $DanaKasCopyWith<$Res>(_value.danaKas!, (value) {
      return _then(_value.copyWith(danaKas: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DanaRrakCopyWith<$Res>? get danaRrak {
    if (_value.danaRrak == null) {
      return null;
    }

    return $DanaRrakCopyWith<$Res>(_value.danaRrak!, (value) {
      return _then(_value.copyWith(danaRrak: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DataAuditCopyWith<$Res> implements $DataAuditCopyWith<$Res> {
  factory _$$_DataAuditCopyWith(
          _$_DataAudit value, $Res Function(_$_DataAudit) then) =
      __$$_DataAuditCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? kdtk,
      AuditStatus status,
      DanaCurrent? danaCurrent,
      DanaLastDay? danaLastDay,
      DanaKas? danaKas,
      DanaRrak? danaRrak});

  @override
  $DanaCurrentCopyWith<$Res>? get danaCurrent;
  @override
  $DanaLastDayCopyWith<$Res>? get danaLastDay;
  @override
  $DanaKasCopyWith<$Res>? get danaKas;
  @override
  $DanaRrakCopyWith<$Res>? get danaRrak;
}

/// @nodoc
class __$$_DataAuditCopyWithImpl<$Res>
    extends _$DataAuditCopyWithImpl<$Res, _$_DataAudit>
    implements _$$_DataAuditCopyWith<$Res> {
  __$$_DataAuditCopyWithImpl(
      _$_DataAudit _value, $Res Function(_$_DataAudit) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kdtk = freezed,
    Object? status = null,
    Object? danaCurrent = freezed,
    Object? danaLastDay = freezed,
    Object? danaKas = freezed,
    Object? danaRrak = freezed,
  }) {
    return _then(_$_DataAudit(
      kdtk: freezed == kdtk
          ? _value.kdtk
          : kdtk // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuditStatus,
      danaCurrent: freezed == danaCurrent
          ? _value.danaCurrent
          : danaCurrent // ignore: cast_nullable_to_non_nullable
              as DanaCurrent?,
      danaLastDay: freezed == danaLastDay
          ? _value.danaLastDay
          : danaLastDay // ignore: cast_nullable_to_non_nullable
              as DanaLastDay?,
      danaKas: freezed == danaKas
          ? _value.danaKas
          : danaKas // ignore: cast_nullable_to_non_nullable
              as DanaKas?,
      danaRrak: freezed == danaRrak
          ? _value.danaRrak
          : danaRrak // ignore: cast_nullable_to_non_nullable
              as DanaRrak?,
    ));
  }
}

/// @nodoc

class _$_DataAudit implements _DataAudit {
  const _$_DataAudit(
      {this.kdtk,
      this.status = AuditStatus.initial,
      this.danaCurrent,
      this.danaLastDay,
      this.danaKas,
      this.danaRrak});

  @override
  final String? kdtk;
  @override
  @JsonKey()
  final AuditStatus status;
  @override
  final DanaCurrent? danaCurrent;
  @override
  final DanaLastDay? danaLastDay;
  @override
  final DanaKas? danaKas;
  @override
  final DanaRrak? danaRrak;

  @override
  String toString() {
    return 'DataAudit(kdtk: $kdtk, status: $status, danaCurrent: $danaCurrent, danaLastDay: $danaLastDay, danaKas: $danaKas, danaRrak: $danaRrak)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataAudit &&
            (identical(other.kdtk, kdtk) || other.kdtk == kdtk) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.danaCurrent, danaCurrent) ||
                other.danaCurrent == danaCurrent) &&
            (identical(other.danaLastDay, danaLastDay) ||
                other.danaLastDay == danaLastDay) &&
            (identical(other.danaKas, danaKas) || other.danaKas == danaKas) &&
            (identical(other.danaRrak, danaRrak) ||
                other.danaRrak == danaRrak));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, kdtk, status, danaCurrent, danaLastDay, danaKas, danaRrak);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataAuditCopyWith<_$_DataAudit> get copyWith =>
      __$$_DataAuditCopyWithImpl<_$_DataAudit>(this, _$identity);
}

abstract class _DataAudit implements DataAudit {
  const factory _DataAudit(
      {final String? kdtk,
      final AuditStatus status,
      final DanaCurrent? danaCurrent,
      final DanaLastDay? danaLastDay,
      final DanaKas? danaKas,
      final DanaRrak? danaRrak}) = _$_DataAudit;

  @override
  String? get kdtk;
  @override
  AuditStatus get status;
  @override
  DanaCurrent? get danaCurrent;
  @override
  DanaLastDay? get danaLastDay;
  @override
  DanaKas? get danaKas;
  @override
  DanaRrak? get danaRrak;
  @override
  @JsonKey(ignore: true)
  _$$_DataAuditCopyWith<_$_DataAudit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DanaCurrent {
  double? get salesComputer => throw _privateConstructorUsedError;
  double? get salesFisik => throw _privateConstructorUsedError;
  double? get selisih => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DanaCurrentCopyWith<DanaCurrent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DanaCurrentCopyWith<$Res> {
  factory $DanaCurrentCopyWith(
          DanaCurrent value, $Res Function(DanaCurrent) then) =
      _$DanaCurrentCopyWithImpl<$Res, DanaCurrent>;
  @useResult
  $Res call({double? salesComputer, double? salesFisik, double? selisih});
}

/// @nodoc
class _$DanaCurrentCopyWithImpl<$Res, $Val extends DanaCurrent>
    implements $DanaCurrentCopyWith<$Res> {
  _$DanaCurrentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? salesComputer = freezed,
    Object? salesFisik = freezed,
    Object? selisih = freezed,
  }) {
    return _then(_value.copyWith(
      salesComputer: freezed == salesComputer
          ? _value.salesComputer
          : salesComputer // ignore: cast_nullable_to_non_nullable
              as double?,
      salesFisik: freezed == salesFisik
          ? _value.salesFisik
          : salesFisik // ignore: cast_nullable_to_non_nullable
              as double?,
      selisih: freezed == selisih
          ? _value.selisih
          : selisih // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DanaCurrentCopyWith<$Res>
    implements $DanaCurrentCopyWith<$Res> {
  factory _$$_DanaCurrentCopyWith(
          _$_DanaCurrent value, $Res Function(_$_DanaCurrent) then) =
      __$$_DanaCurrentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? salesComputer, double? salesFisik, double? selisih});
}

/// @nodoc
class __$$_DanaCurrentCopyWithImpl<$Res>
    extends _$DanaCurrentCopyWithImpl<$Res, _$_DanaCurrent>
    implements _$$_DanaCurrentCopyWith<$Res> {
  __$$_DanaCurrentCopyWithImpl(
      _$_DanaCurrent _value, $Res Function(_$_DanaCurrent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? salesComputer = freezed,
    Object? salesFisik = freezed,
    Object? selisih = freezed,
  }) {
    return _then(_$_DanaCurrent(
      salesComputer: freezed == salesComputer
          ? _value.salesComputer
          : salesComputer // ignore: cast_nullable_to_non_nullable
              as double?,
      salesFisik: freezed == salesFisik
          ? _value.salesFisik
          : salesFisik // ignore: cast_nullable_to_non_nullable
              as double?,
      selisih: freezed == selisih
          ? _value.selisih
          : selisih // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$_DanaCurrent implements _DanaCurrent {
  const _$_DanaCurrent({this.salesComputer, this.salesFisik, this.selisih});

  @override
  final double? salesComputer;
  @override
  final double? salesFisik;
  @override
  final double? selisih;

  @override
  String toString() {
    return 'DanaCurrent(salesComputer: $salesComputer, salesFisik: $salesFisik, selisih: $selisih)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DanaCurrent &&
            (identical(other.salesComputer, salesComputer) ||
                other.salesComputer == salesComputer) &&
            (identical(other.salesFisik, salesFisik) ||
                other.salesFisik == salesFisik) &&
            (identical(other.selisih, selisih) || other.selisih == selisih));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, salesComputer, salesFisik, selisih);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DanaCurrentCopyWith<_$_DanaCurrent> get copyWith =>
      __$$_DanaCurrentCopyWithImpl<_$_DanaCurrent>(this, _$identity);
}

abstract class _DanaCurrent implements DanaCurrent {
  const factory _DanaCurrent(
      {final double? salesComputer,
      final double? salesFisik,
      final double? selisih}) = _$_DanaCurrent;

  @override
  double? get salesComputer;
  @override
  double? get salesFisik;
  @override
  double? get selisih;
  @override
  @JsonKey(ignore: true)
  _$$_DanaCurrentCopyWith<_$_DanaCurrent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DanaLastDay {
  double? get salesComputer => throw _privateConstructorUsedError;
  List<KurangSetor>? get salesFisik => throw _privateConstructorUsedError;
  double? get selisih => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DanaLastDayCopyWith<DanaLastDay> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DanaLastDayCopyWith<$Res> {
  factory $DanaLastDayCopyWith(
          DanaLastDay value, $Res Function(DanaLastDay) then) =
      _$DanaLastDayCopyWithImpl<$Res, DanaLastDay>;
  @useResult
  $Res call(
      {double? salesComputer, List<KurangSetor>? salesFisik, double? selisih});
}

/// @nodoc
class _$DanaLastDayCopyWithImpl<$Res, $Val extends DanaLastDay>
    implements $DanaLastDayCopyWith<$Res> {
  _$DanaLastDayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? salesComputer = freezed,
    Object? salesFisik = freezed,
    Object? selisih = freezed,
  }) {
    return _then(_value.copyWith(
      salesComputer: freezed == salesComputer
          ? _value.salesComputer
          : salesComputer // ignore: cast_nullable_to_non_nullable
              as double?,
      salesFisik: freezed == salesFisik
          ? _value.salesFisik
          : salesFisik // ignore: cast_nullable_to_non_nullable
              as List<KurangSetor>?,
      selisih: freezed == selisih
          ? _value.selisih
          : selisih // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DanaLastDayCopyWith<$Res>
    implements $DanaLastDayCopyWith<$Res> {
  factory _$$_DanaLastDayCopyWith(
          _$_DanaLastDay value, $Res Function(_$_DanaLastDay) then) =
      __$$_DanaLastDayCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? salesComputer, List<KurangSetor>? salesFisik, double? selisih});
}

/// @nodoc
class __$$_DanaLastDayCopyWithImpl<$Res>
    extends _$DanaLastDayCopyWithImpl<$Res, _$_DanaLastDay>
    implements _$$_DanaLastDayCopyWith<$Res> {
  __$$_DanaLastDayCopyWithImpl(
      _$_DanaLastDay _value, $Res Function(_$_DanaLastDay) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? salesComputer = freezed,
    Object? salesFisik = freezed,
    Object? selisih = freezed,
  }) {
    return _then(_$_DanaLastDay(
      salesComputer: freezed == salesComputer
          ? _value.salesComputer
          : salesComputer // ignore: cast_nullable_to_non_nullable
              as double?,
      salesFisik: freezed == salesFisik
          ? _value._salesFisik
          : salesFisik // ignore: cast_nullable_to_non_nullable
              as List<KurangSetor>?,
      selisih: freezed == selisih
          ? _value.selisih
          : selisih // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$_DanaLastDay implements _DanaLastDay {
  const _$_DanaLastDay(
      {this.salesComputer, final List<KurangSetor>? salesFisik, this.selisih})
      : _salesFisik = salesFisik;

  @override
  final double? salesComputer;
  final List<KurangSetor>? _salesFisik;
  @override
  List<KurangSetor>? get salesFisik {
    final value = _salesFisik;
    if (value == null) return null;
    if (_salesFisik is EqualUnmodifiableListView) return _salesFisik;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final double? selisih;

  @override
  String toString() {
    return 'DanaLastDay(salesComputer: $salesComputer, salesFisik: $salesFisik, selisih: $selisih)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DanaLastDay &&
            (identical(other.salesComputer, salesComputer) ||
                other.salesComputer == salesComputer) &&
            const DeepCollectionEquality()
                .equals(other._salesFisik, _salesFisik) &&
            (identical(other.selisih, selisih) || other.selisih == selisih));
  }

  @override
  int get hashCode => Object.hash(runtimeType, salesComputer,
      const DeepCollectionEquality().hash(_salesFisik), selisih);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DanaLastDayCopyWith<_$_DanaLastDay> get copyWith =>
      __$$_DanaLastDayCopyWithImpl<_$_DanaLastDay>(this, _$identity);
}

abstract class _DanaLastDay implements DanaLastDay {
  const factory _DanaLastDay(
      {final double? salesComputer,
      final List<KurangSetor>? salesFisik,
      final double? selisih}) = _$_DanaLastDay;

  @override
  double? get salesComputer;
  @override
  List<KurangSetor>? get salesFisik;
  @override
  double? get selisih;
  @override
  @JsonKey(ignore: true)
  _$$_DanaLastDayCopyWith<_$_DanaLastDay> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DanaKas {
  double? get kasFinance => throw _privateConstructorUsedError;
  double? get kasBrankas => throw _privateConstructorUsedError;
  double? get kasKasir => throw _privateConstructorUsedError;
  double? get uangKoin => throw _privateConstructorUsedError;
  double? get selisih => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DanaKasCopyWith<DanaKas> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DanaKasCopyWith<$Res> {
  factory $DanaKasCopyWith(DanaKas value, $Res Function(DanaKas) then) =
      _$DanaKasCopyWithImpl<$Res, DanaKas>;
  @useResult
  $Res call(
      {double? kasFinance,
      double? kasBrankas,
      double? kasKasir,
      double? uangKoin,
      double? selisih});
}

/// @nodoc
class _$DanaKasCopyWithImpl<$Res, $Val extends DanaKas>
    implements $DanaKasCopyWith<$Res> {
  _$DanaKasCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kasFinance = freezed,
    Object? kasBrankas = freezed,
    Object? kasKasir = freezed,
    Object? uangKoin = freezed,
    Object? selisih = freezed,
  }) {
    return _then(_value.copyWith(
      kasFinance: freezed == kasFinance
          ? _value.kasFinance
          : kasFinance // ignore: cast_nullable_to_non_nullable
              as double?,
      kasBrankas: freezed == kasBrankas
          ? _value.kasBrankas
          : kasBrankas // ignore: cast_nullable_to_non_nullable
              as double?,
      kasKasir: freezed == kasKasir
          ? _value.kasKasir
          : kasKasir // ignore: cast_nullable_to_non_nullable
              as double?,
      uangKoin: freezed == uangKoin
          ? _value.uangKoin
          : uangKoin // ignore: cast_nullable_to_non_nullable
              as double?,
      selisih: freezed == selisih
          ? _value.selisih
          : selisih // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DanaKasCopyWith<$Res> implements $DanaKasCopyWith<$Res> {
  factory _$$_DanaKasCopyWith(
          _$_DanaKas value, $Res Function(_$_DanaKas) then) =
      __$$_DanaKasCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? kasFinance,
      double? kasBrankas,
      double? kasKasir,
      double? uangKoin,
      double? selisih});
}

/// @nodoc
class __$$_DanaKasCopyWithImpl<$Res>
    extends _$DanaKasCopyWithImpl<$Res, _$_DanaKas>
    implements _$$_DanaKasCopyWith<$Res> {
  __$$_DanaKasCopyWithImpl(_$_DanaKas _value, $Res Function(_$_DanaKas) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kasFinance = freezed,
    Object? kasBrankas = freezed,
    Object? kasKasir = freezed,
    Object? uangKoin = freezed,
    Object? selisih = freezed,
  }) {
    return _then(_$_DanaKas(
      kasFinance: freezed == kasFinance
          ? _value.kasFinance
          : kasFinance // ignore: cast_nullable_to_non_nullable
              as double?,
      kasBrankas: freezed == kasBrankas
          ? _value.kasBrankas
          : kasBrankas // ignore: cast_nullable_to_non_nullable
              as double?,
      kasKasir: freezed == kasKasir
          ? _value.kasKasir
          : kasKasir // ignore: cast_nullable_to_non_nullable
              as double?,
      uangKoin: freezed == uangKoin
          ? _value.uangKoin
          : uangKoin // ignore: cast_nullable_to_non_nullable
              as double?,
      selisih: freezed == selisih
          ? _value.selisih
          : selisih // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$_DanaKas implements _DanaKas {
  const _$_DanaKas(
      {this.kasFinance,
      this.kasBrankas,
      this.kasKasir,
      this.uangKoin,
      this.selisih});

  @override
  final double? kasFinance;
  @override
  final double? kasBrankas;
  @override
  final double? kasKasir;
  @override
  final double? uangKoin;
  @override
  final double? selisih;

  @override
  String toString() {
    return 'DanaKas(kasFinance: $kasFinance, kasBrankas: $kasBrankas, kasKasir: $kasKasir, uangKoin: $uangKoin, selisih: $selisih)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DanaKas &&
            (identical(other.kasFinance, kasFinance) ||
                other.kasFinance == kasFinance) &&
            (identical(other.kasBrankas, kasBrankas) ||
                other.kasBrankas == kasBrankas) &&
            (identical(other.kasKasir, kasKasir) ||
                other.kasKasir == kasKasir) &&
            (identical(other.uangKoin, uangKoin) ||
                other.uangKoin == uangKoin) &&
            (identical(other.selisih, selisih) || other.selisih == selisih));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, kasFinance, kasBrankas, kasKasir, uangKoin, selisih);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DanaKasCopyWith<_$_DanaKas> get copyWith =>
      __$$_DanaKasCopyWithImpl<_$_DanaKas>(this, _$identity);
}

abstract class _DanaKas implements DanaKas {
  const factory _DanaKas(
      {final double? kasFinance,
      final double? kasBrankas,
      final double? kasKasir,
      final double? uangKoin,
      final double? selisih}) = _$_DanaKas;

  @override
  double? get kasFinance;
  @override
  double? get kasBrankas;
  @override
  double? get kasKasir;
  @override
  double? get uangKoin;
  @override
  double? get selisih;
  @override
  @JsonKey(ignore: true)
  _$$_DanaKasCopyWith<_$_DanaKas> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DanaRrak {
  double? get rencanaRrak => throw _privateConstructorUsedError;
  double? get fisikDanaRrak => throw _privateConstructorUsedError;
  double? get notaRrak => throw _privateConstructorUsedError;
  double? get selisih => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DanaRrakCopyWith<DanaRrak> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DanaRrakCopyWith<$Res> {
  factory $DanaRrakCopyWith(DanaRrak value, $Res Function(DanaRrak) then) =
      _$DanaRrakCopyWithImpl<$Res, DanaRrak>;
  @useResult
  $Res call(
      {double? rencanaRrak,
      double? fisikDanaRrak,
      double? notaRrak,
      double? selisih});
}

/// @nodoc
class _$DanaRrakCopyWithImpl<$Res, $Val extends DanaRrak>
    implements $DanaRrakCopyWith<$Res> {
  _$DanaRrakCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rencanaRrak = freezed,
    Object? fisikDanaRrak = freezed,
    Object? notaRrak = freezed,
    Object? selisih = freezed,
  }) {
    return _then(_value.copyWith(
      rencanaRrak: freezed == rencanaRrak
          ? _value.rencanaRrak
          : rencanaRrak // ignore: cast_nullable_to_non_nullable
              as double?,
      fisikDanaRrak: freezed == fisikDanaRrak
          ? _value.fisikDanaRrak
          : fisikDanaRrak // ignore: cast_nullable_to_non_nullable
              as double?,
      notaRrak: freezed == notaRrak
          ? _value.notaRrak
          : notaRrak // ignore: cast_nullable_to_non_nullable
              as double?,
      selisih: freezed == selisih
          ? _value.selisih
          : selisih // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DanaRrakCopyWith<$Res> implements $DanaRrakCopyWith<$Res> {
  factory _$$_DanaRrakCopyWith(
          _$_DanaRrak value, $Res Function(_$_DanaRrak) then) =
      __$$_DanaRrakCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? rencanaRrak,
      double? fisikDanaRrak,
      double? notaRrak,
      double? selisih});
}

/// @nodoc
class __$$_DanaRrakCopyWithImpl<$Res>
    extends _$DanaRrakCopyWithImpl<$Res, _$_DanaRrak>
    implements _$$_DanaRrakCopyWith<$Res> {
  __$$_DanaRrakCopyWithImpl(
      _$_DanaRrak _value, $Res Function(_$_DanaRrak) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rencanaRrak = freezed,
    Object? fisikDanaRrak = freezed,
    Object? notaRrak = freezed,
    Object? selisih = freezed,
  }) {
    return _then(_$_DanaRrak(
      rencanaRrak: freezed == rencanaRrak
          ? _value.rencanaRrak
          : rencanaRrak // ignore: cast_nullable_to_non_nullable
              as double?,
      fisikDanaRrak: freezed == fisikDanaRrak
          ? _value.fisikDanaRrak
          : fisikDanaRrak // ignore: cast_nullable_to_non_nullable
              as double?,
      notaRrak: freezed == notaRrak
          ? _value.notaRrak
          : notaRrak // ignore: cast_nullable_to_non_nullable
              as double?,
      selisih: freezed == selisih
          ? _value.selisih
          : selisih // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$_DanaRrak implements _DanaRrak {
  const _$_DanaRrak(
      {this.rencanaRrak, this.fisikDanaRrak, this.notaRrak, this.selisih});

  @override
  final double? rencanaRrak;
  @override
  final double? fisikDanaRrak;
  @override
  final double? notaRrak;
  @override
  final double? selisih;

  @override
  String toString() {
    return 'DanaRrak(rencanaRrak: $rencanaRrak, fisikDanaRrak: $fisikDanaRrak, notaRrak: $notaRrak, selisih: $selisih)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DanaRrak &&
            (identical(other.rencanaRrak, rencanaRrak) ||
                other.rencanaRrak == rencanaRrak) &&
            (identical(other.fisikDanaRrak, fisikDanaRrak) ||
                other.fisikDanaRrak == fisikDanaRrak) &&
            (identical(other.notaRrak, notaRrak) ||
                other.notaRrak == notaRrak) &&
            (identical(other.selisih, selisih) || other.selisih == selisih));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, rencanaRrak, fisikDanaRrak, notaRrak, selisih);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DanaRrakCopyWith<_$_DanaRrak> get copyWith =>
      __$$_DanaRrakCopyWithImpl<_$_DanaRrak>(this, _$identity);
}

abstract class _DanaRrak implements DanaRrak {
  const factory _DanaRrak(
      {final double? rencanaRrak,
      final double? fisikDanaRrak,
      final double? notaRrak,
      final double? selisih}) = _$_DanaRrak;

  @override
  double? get rencanaRrak;
  @override
  double? get fisikDanaRrak;
  @override
  double? get notaRrak;
  @override
  double? get selisih;
  @override
  @JsonKey(ignore: true)
  _$$_DanaRrakCopyWith<_$_DanaRrak> get copyWith =>
      throw _privateConstructorUsedError;
}
