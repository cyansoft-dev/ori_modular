// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_audit_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataAuditModel _$DataAuditModelFromJson(Map<String, dynamic> json) {
  return _DataAuditModel.fromJson(json);
}

/// @nodoc
mixin _$DataAuditModel {
  String? get kdtk => throw _privateConstructorUsedError;
  @JsonKey(name: "dana_current")
  DanaCurrentModel? get danaCurrent => throw _privateConstructorUsedError;
  @JsonKey(name: "dana_last")
  DanaLastDayModel? get danaLastDay => throw _privateConstructorUsedError;
  @JsonKey(name: "dana_kas")
  DanaKasModel? get danaKas => throw _privateConstructorUsedError;
  @JsonKey(name: "dana_rrak")
  DanaRrakModel? get danaRrak => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataAuditModelCopyWith<DataAuditModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataAuditModelCopyWith<$Res> {
  factory $DataAuditModelCopyWith(
          DataAuditModel value, $Res Function(DataAuditModel) then) =
      _$DataAuditModelCopyWithImpl<$Res, DataAuditModel>;
  @useResult
  $Res call(
      {String? kdtk,
      @JsonKey(name: "dana_current") DanaCurrentModel? danaCurrent,
      @JsonKey(name: "dana_last") DanaLastDayModel? danaLastDay,
      @JsonKey(name: "dana_kas") DanaKasModel? danaKas,
      @JsonKey(name: "dana_rrak") DanaRrakModel? danaRrak});

  $DanaCurrentModelCopyWith<$Res>? get danaCurrent;
  $DanaLastDayModelCopyWith<$Res>? get danaLastDay;
  $DanaKasModelCopyWith<$Res>? get danaKas;
  $DanaRrakModelCopyWith<$Res>? get danaRrak;
}

/// @nodoc
class _$DataAuditModelCopyWithImpl<$Res, $Val extends DataAuditModel>
    implements $DataAuditModelCopyWith<$Res> {
  _$DataAuditModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kdtk = freezed,
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
      danaCurrent: freezed == danaCurrent
          ? _value.danaCurrent
          : danaCurrent // ignore: cast_nullable_to_non_nullable
              as DanaCurrentModel?,
      danaLastDay: freezed == danaLastDay
          ? _value.danaLastDay
          : danaLastDay // ignore: cast_nullable_to_non_nullable
              as DanaLastDayModel?,
      danaKas: freezed == danaKas
          ? _value.danaKas
          : danaKas // ignore: cast_nullable_to_non_nullable
              as DanaKasModel?,
      danaRrak: freezed == danaRrak
          ? _value.danaRrak
          : danaRrak // ignore: cast_nullable_to_non_nullable
              as DanaRrakModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DanaCurrentModelCopyWith<$Res>? get danaCurrent {
    if (_value.danaCurrent == null) {
      return null;
    }

    return $DanaCurrentModelCopyWith<$Res>(_value.danaCurrent!, (value) {
      return _then(_value.copyWith(danaCurrent: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DanaLastDayModelCopyWith<$Res>? get danaLastDay {
    if (_value.danaLastDay == null) {
      return null;
    }

    return $DanaLastDayModelCopyWith<$Res>(_value.danaLastDay!, (value) {
      return _then(_value.copyWith(danaLastDay: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DanaKasModelCopyWith<$Res>? get danaKas {
    if (_value.danaKas == null) {
      return null;
    }

    return $DanaKasModelCopyWith<$Res>(_value.danaKas!, (value) {
      return _then(_value.copyWith(danaKas: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DanaRrakModelCopyWith<$Res>? get danaRrak {
    if (_value.danaRrak == null) {
      return null;
    }

    return $DanaRrakModelCopyWith<$Res>(_value.danaRrak!, (value) {
      return _then(_value.copyWith(danaRrak: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DataAuditModelCopyWith<$Res>
    implements $DataAuditModelCopyWith<$Res> {
  factory _$$_DataAuditModelCopyWith(
          _$_DataAuditModel value, $Res Function(_$_DataAuditModel) then) =
      __$$_DataAuditModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? kdtk,
      @JsonKey(name: "dana_current") DanaCurrentModel? danaCurrent,
      @JsonKey(name: "dana_last") DanaLastDayModel? danaLastDay,
      @JsonKey(name: "dana_kas") DanaKasModel? danaKas,
      @JsonKey(name: "dana_rrak") DanaRrakModel? danaRrak});

  @override
  $DanaCurrentModelCopyWith<$Res>? get danaCurrent;
  @override
  $DanaLastDayModelCopyWith<$Res>? get danaLastDay;
  @override
  $DanaKasModelCopyWith<$Res>? get danaKas;
  @override
  $DanaRrakModelCopyWith<$Res>? get danaRrak;
}

/// @nodoc
class __$$_DataAuditModelCopyWithImpl<$Res>
    extends _$DataAuditModelCopyWithImpl<$Res, _$_DataAuditModel>
    implements _$$_DataAuditModelCopyWith<$Res> {
  __$$_DataAuditModelCopyWithImpl(
      _$_DataAuditModel _value, $Res Function(_$_DataAuditModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kdtk = freezed,
    Object? danaCurrent = freezed,
    Object? danaLastDay = freezed,
    Object? danaKas = freezed,
    Object? danaRrak = freezed,
  }) {
    return _then(_$_DataAuditModel(
      kdtk: freezed == kdtk
          ? _value.kdtk
          : kdtk // ignore: cast_nullable_to_non_nullable
              as String?,
      danaCurrent: freezed == danaCurrent
          ? _value.danaCurrent
          : danaCurrent // ignore: cast_nullable_to_non_nullable
              as DanaCurrentModel?,
      danaLastDay: freezed == danaLastDay
          ? _value.danaLastDay
          : danaLastDay // ignore: cast_nullable_to_non_nullable
              as DanaLastDayModel?,
      danaKas: freezed == danaKas
          ? _value.danaKas
          : danaKas // ignore: cast_nullable_to_non_nullable
              as DanaKasModel?,
      danaRrak: freezed == danaRrak
          ? _value.danaRrak
          : danaRrak // ignore: cast_nullable_to_non_nullable
              as DanaRrakModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_DataAuditModel extends _DataAuditModel {
  const _$_DataAuditModel(
      {this.kdtk,
      @JsonKey(name: "dana_current") this.danaCurrent,
      @JsonKey(name: "dana_last") this.danaLastDay,
      @JsonKey(name: "dana_kas") this.danaKas,
      @JsonKey(name: "dana_rrak") this.danaRrak})
      : super._();

  factory _$_DataAuditModel.fromJson(Map<String, dynamic> json) =>
      _$$_DataAuditModelFromJson(json);

  @override
  final String? kdtk;
  @override
  @JsonKey(name: "dana_current")
  final DanaCurrentModel? danaCurrent;
  @override
  @JsonKey(name: "dana_last")
  final DanaLastDayModel? danaLastDay;
  @override
  @JsonKey(name: "dana_kas")
  final DanaKasModel? danaKas;
  @override
  @JsonKey(name: "dana_rrak")
  final DanaRrakModel? danaRrak;

  @override
  String toString() {
    return 'DataAuditModel(kdtk: $kdtk, danaCurrent: $danaCurrent, danaLastDay: $danaLastDay, danaKas: $danaKas, danaRrak: $danaRrak)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataAuditModel &&
            (identical(other.kdtk, kdtk) || other.kdtk == kdtk) &&
            (identical(other.danaCurrent, danaCurrent) ||
                other.danaCurrent == danaCurrent) &&
            (identical(other.danaLastDay, danaLastDay) ||
                other.danaLastDay == danaLastDay) &&
            (identical(other.danaKas, danaKas) || other.danaKas == danaKas) &&
            (identical(other.danaRrak, danaRrak) ||
                other.danaRrak == danaRrak));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, kdtk, danaCurrent, danaLastDay, danaKas, danaRrak);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataAuditModelCopyWith<_$_DataAuditModel> get copyWith =>
      __$$_DataAuditModelCopyWithImpl<_$_DataAuditModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataAuditModelToJson(
      this,
    );
  }
}

abstract class _DataAuditModel extends DataAuditModel {
  const factory _DataAuditModel(
          {final String? kdtk,
          @JsonKey(name: "dana_current") final DanaCurrentModel? danaCurrent,
          @JsonKey(name: "dana_last") final DanaLastDayModel? danaLastDay,
          @JsonKey(name: "dana_kas") final DanaKasModel? danaKas,
          @JsonKey(name: "dana_rrak") final DanaRrakModel? danaRrak}) =
      _$_DataAuditModel;
  const _DataAuditModel._() : super._();

  factory _DataAuditModel.fromJson(Map<String, dynamic> json) =
      _$_DataAuditModel.fromJson;

  @override
  String? get kdtk;
  @override
  @JsonKey(name: "dana_current")
  DanaCurrentModel? get danaCurrent;
  @override
  @JsonKey(name: "dana_last")
  DanaLastDayModel? get danaLastDay;
  @override
  @JsonKey(name: "dana_kas")
  DanaKasModel? get danaKas;
  @override
  @JsonKey(name: "dana_rrak")
  DanaRrakModel? get danaRrak;
  @override
  @JsonKey(ignore: true)
  _$$_DataAuditModelCopyWith<_$_DataAuditModel> get copyWith =>
      throw _privateConstructorUsedError;
}

DanaCurrentModel _$DanaCurrentModelFromJson(Map<String, dynamic> json) {
  return _DanaCurrentModel.fromJson(json);
}

/// @nodoc
mixin _$DanaCurrentModel {
/*@JsonKey(name: "uang_modal") double? uangModal,*/
  @JsonKey(name: "sales_computer")
  double? get salesComputer => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_fisik")
  double? get salesFisik => throw _privateConstructorUsedError;
  @JsonKey(name: "selisih")
  double? get selisih => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DanaCurrentModelCopyWith<DanaCurrentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DanaCurrentModelCopyWith<$Res> {
  factory $DanaCurrentModelCopyWith(
          DanaCurrentModel value, $Res Function(DanaCurrentModel) then) =
      _$DanaCurrentModelCopyWithImpl<$Res, DanaCurrentModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "sales_computer") double? salesComputer,
      @JsonKey(name: "sales_fisik") double? salesFisik,
      @JsonKey(name: "selisih") double? selisih});
}

/// @nodoc
class _$DanaCurrentModelCopyWithImpl<$Res, $Val extends DanaCurrentModel>
    implements $DanaCurrentModelCopyWith<$Res> {
  _$DanaCurrentModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_DanaCurrentModelCopyWith<$Res>
    implements $DanaCurrentModelCopyWith<$Res> {
  factory _$$_DanaCurrentModelCopyWith(
          _$_DanaCurrentModel value, $Res Function(_$_DanaCurrentModel) then) =
      __$$_DanaCurrentModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "sales_computer") double? salesComputer,
      @JsonKey(name: "sales_fisik") double? salesFisik,
      @JsonKey(name: "selisih") double? selisih});
}

/// @nodoc
class __$$_DanaCurrentModelCopyWithImpl<$Res>
    extends _$DanaCurrentModelCopyWithImpl<$Res, _$_DanaCurrentModel>
    implements _$$_DanaCurrentModelCopyWith<$Res> {
  __$$_DanaCurrentModelCopyWithImpl(
      _$_DanaCurrentModel _value, $Res Function(_$_DanaCurrentModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? salesComputer = freezed,
    Object? salesFisik = freezed,
    Object? selisih = freezed,
  }) {
    return _then(_$_DanaCurrentModel(
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

@JsonSerializable(explicitToJson: true)
class _$_DanaCurrentModel extends _DanaCurrentModel {
  const _$_DanaCurrentModel(
      {@JsonKey(name: "sales_computer") this.salesComputer,
      @JsonKey(name: "sales_fisik") this.salesFisik,
      @JsonKey(name: "selisih") this.selisih})
      : super._();

  factory _$_DanaCurrentModel.fromJson(Map<String, dynamic> json) =>
      _$$_DanaCurrentModelFromJson(json);

/*@JsonKey(name: "uang_modal") double? uangModal,*/
  @override
  @JsonKey(name: "sales_computer")
  final double? salesComputer;
  @override
  @JsonKey(name: "sales_fisik")
  final double? salesFisik;
  @override
  @JsonKey(name: "selisih")
  final double? selisih;

  @override
  String toString() {
    return 'DanaCurrentModel(salesComputer: $salesComputer, salesFisik: $salesFisik, selisih: $selisih)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DanaCurrentModel &&
            (identical(other.salesComputer, salesComputer) ||
                other.salesComputer == salesComputer) &&
            (identical(other.salesFisik, salesFisik) ||
                other.salesFisik == salesFisik) &&
            (identical(other.selisih, selisih) || other.selisih == selisih));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, salesComputer, salesFisik, selisih);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DanaCurrentModelCopyWith<_$_DanaCurrentModel> get copyWith =>
      __$$_DanaCurrentModelCopyWithImpl<_$_DanaCurrentModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DanaCurrentModelToJson(
      this,
    );
  }
}

abstract class _DanaCurrentModel extends DanaCurrentModel {
  const factory _DanaCurrentModel(
      {@JsonKey(name: "sales_computer") final double? salesComputer,
      @JsonKey(name: "sales_fisik") final double? salesFisik,
      @JsonKey(name: "selisih") final double? selisih}) = _$_DanaCurrentModel;
  const _DanaCurrentModel._() : super._();

  factory _DanaCurrentModel.fromJson(Map<String, dynamic> json) =
      _$_DanaCurrentModel.fromJson;

  @override /*@JsonKey(name: "uang_modal") double? uangModal,*/
  @JsonKey(name: "sales_computer")
  double? get salesComputer;
  @override
  @JsonKey(name: "sales_fisik")
  double? get salesFisik;
  @override
  @JsonKey(name: "selisih")
  double? get selisih;
  @override
  @JsonKey(ignore: true)
  _$$_DanaCurrentModelCopyWith<_$_DanaCurrentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

DanaLastDayModel _$DanaLastDayModelFromJson(Map<String, dynamic> json) {
  return _DanaLastDayModel.fromJson(json);
}

/// @nodoc
mixin _$DanaLastDayModel {
  @JsonKey(name: "sales_computer")
  double? get salesComputer => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_fisik")
  List<KurangSetorModel>? get salesFisik => throw _privateConstructorUsedError;
  @JsonKey(name: "selisih")
  double? get selisih => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DanaLastDayModelCopyWith<DanaLastDayModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DanaLastDayModelCopyWith<$Res> {
  factory $DanaLastDayModelCopyWith(
          DanaLastDayModel value, $Res Function(DanaLastDayModel) then) =
      _$DanaLastDayModelCopyWithImpl<$Res, DanaLastDayModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "sales_computer") double? salesComputer,
      @JsonKey(name: "sales_fisik") List<KurangSetorModel>? salesFisik,
      @JsonKey(name: "selisih") double? selisih});
}

/// @nodoc
class _$DanaLastDayModelCopyWithImpl<$Res, $Val extends DanaLastDayModel>
    implements $DanaLastDayModelCopyWith<$Res> {
  _$DanaLastDayModelCopyWithImpl(this._value, this._then);

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
              as List<KurangSetorModel>?,
      selisih: freezed == selisih
          ? _value.selisih
          : selisih // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DanaLastDayModelCopyWith<$Res>
    implements $DanaLastDayModelCopyWith<$Res> {
  factory _$$_DanaLastDayModelCopyWith(
          _$_DanaLastDayModel value, $Res Function(_$_DanaLastDayModel) then) =
      __$$_DanaLastDayModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "sales_computer") double? salesComputer,
      @JsonKey(name: "sales_fisik") List<KurangSetorModel>? salesFisik,
      @JsonKey(name: "selisih") double? selisih});
}

/// @nodoc
class __$$_DanaLastDayModelCopyWithImpl<$Res>
    extends _$DanaLastDayModelCopyWithImpl<$Res, _$_DanaLastDayModel>
    implements _$$_DanaLastDayModelCopyWith<$Res> {
  __$$_DanaLastDayModelCopyWithImpl(
      _$_DanaLastDayModel _value, $Res Function(_$_DanaLastDayModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? salesComputer = freezed,
    Object? salesFisik = freezed,
    Object? selisih = freezed,
  }) {
    return _then(_$_DanaLastDayModel(
      salesComputer: freezed == salesComputer
          ? _value.salesComputer
          : salesComputer // ignore: cast_nullable_to_non_nullable
              as double?,
      salesFisik: freezed == salesFisik
          ? _value._salesFisik
          : salesFisik // ignore: cast_nullable_to_non_nullable
              as List<KurangSetorModel>?,
      selisih: freezed == selisih
          ? _value.selisih
          : selisih // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_DanaLastDayModel extends _DanaLastDayModel {
  const _$_DanaLastDayModel(
      {@JsonKey(name: "sales_computer") this.salesComputer,
      @JsonKey(name: "sales_fisik") final List<KurangSetorModel>? salesFisik,
      @JsonKey(name: "selisih") this.selisih})
      : _salesFisik = salesFisik,
        super._();

  factory _$_DanaLastDayModel.fromJson(Map<String, dynamic> json) =>
      _$$_DanaLastDayModelFromJson(json);

  @override
  @JsonKey(name: "sales_computer")
  final double? salesComputer;
  final List<KurangSetorModel>? _salesFisik;
  @override
  @JsonKey(name: "sales_fisik")
  List<KurangSetorModel>? get salesFisik {
    final value = _salesFisik;
    if (value == null) return null;
    if (_salesFisik is EqualUnmodifiableListView) return _salesFisik;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "selisih")
  final double? selisih;

  @override
  String toString() {
    return 'DanaLastDayModel(salesComputer: $salesComputer, salesFisik: $salesFisik, selisih: $selisih)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DanaLastDayModel &&
            (identical(other.salesComputer, salesComputer) ||
                other.salesComputer == salesComputer) &&
            const DeepCollectionEquality()
                .equals(other._salesFisik, _salesFisik) &&
            (identical(other.selisih, selisih) || other.selisih == selisih));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, salesComputer,
      const DeepCollectionEquality().hash(_salesFisik), selisih);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DanaLastDayModelCopyWith<_$_DanaLastDayModel> get copyWith =>
      __$$_DanaLastDayModelCopyWithImpl<_$_DanaLastDayModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DanaLastDayModelToJson(
      this,
    );
  }
}

abstract class _DanaLastDayModel extends DanaLastDayModel {
  const factory _DanaLastDayModel(
      {@JsonKey(name: "sales_computer") final double? salesComputer,
      @JsonKey(name: "sales_fisik") final List<KurangSetorModel>? salesFisik,
      @JsonKey(name: "selisih") final double? selisih}) = _$_DanaLastDayModel;
  const _DanaLastDayModel._() : super._();

  factory _DanaLastDayModel.fromJson(Map<String, dynamic> json) =
      _$_DanaLastDayModel.fromJson;

  @override
  @JsonKey(name: "sales_computer")
  double? get salesComputer;
  @override
  @JsonKey(name: "sales_fisik")
  List<KurangSetorModel>? get salesFisik;
  @override
  @JsonKey(name: "selisih")
  double? get selisih;
  @override
  @JsonKey(ignore: true)
  _$$_DanaLastDayModelCopyWith<_$_DanaLastDayModel> get copyWith =>
      throw _privateConstructorUsedError;
}

DanaKasModel _$DanaKasModelFromJson(Map<String, dynamic> json) {
  return _DanaKasModel.fromJson(json);
}

/// @nodoc
mixin _$DanaKasModel {
  @JsonKey(name: "kas_finance")
  double? get kasFinance => throw _privateConstructorUsedError;
  @JsonKey(name: "kas_brankas")
  double? get kasBrankas => throw _privateConstructorUsedError;
  @JsonKey(name: "kas_kasir")
  double? get kasKasir => throw _privateConstructorUsedError;
  @JsonKey(name: "koin")
  double? get uangKoin => throw _privateConstructorUsedError;
  @JsonKey(name: "selisih")
  double? get selisih => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DanaKasModelCopyWith<DanaKasModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DanaKasModelCopyWith<$Res> {
  factory $DanaKasModelCopyWith(
          DanaKasModel value, $Res Function(DanaKasModel) then) =
      _$DanaKasModelCopyWithImpl<$Res, DanaKasModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "kas_finance") double? kasFinance,
      @JsonKey(name: "kas_brankas") double? kasBrankas,
      @JsonKey(name: "kas_kasir") double? kasKasir,
      @JsonKey(name: "koin") double? uangKoin,
      @JsonKey(name: "selisih") double? selisih});
}

/// @nodoc
class _$DanaKasModelCopyWithImpl<$Res, $Val extends DanaKasModel>
    implements $DanaKasModelCopyWith<$Res> {
  _$DanaKasModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_DanaKasModelCopyWith<$Res>
    implements $DanaKasModelCopyWith<$Res> {
  factory _$$_DanaKasModelCopyWith(
          _$_DanaKasModel value, $Res Function(_$_DanaKasModel) then) =
      __$$_DanaKasModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "kas_finance") double? kasFinance,
      @JsonKey(name: "kas_brankas") double? kasBrankas,
      @JsonKey(name: "kas_kasir") double? kasKasir,
      @JsonKey(name: "koin") double? uangKoin,
      @JsonKey(name: "selisih") double? selisih});
}

/// @nodoc
class __$$_DanaKasModelCopyWithImpl<$Res>
    extends _$DanaKasModelCopyWithImpl<$Res, _$_DanaKasModel>
    implements _$$_DanaKasModelCopyWith<$Res> {
  __$$_DanaKasModelCopyWithImpl(
      _$_DanaKasModel _value, $Res Function(_$_DanaKasModel) _then)
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
    return _then(_$_DanaKasModel(
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

@JsonSerializable(explicitToJson: true)
class _$_DanaKasModel extends _DanaKasModel {
  const _$_DanaKasModel(
      {@JsonKey(name: "kas_finance") this.kasFinance,
      @JsonKey(name: "kas_brankas") this.kasBrankas,
      @JsonKey(name: "kas_kasir") this.kasKasir,
      @JsonKey(name: "koin") this.uangKoin,
      @JsonKey(name: "selisih") this.selisih})
      : super._();

  factory _$_DanaKasModel.fromJson(Map<String, dynamic> json) =>
      _$$_DanaKasModelFromJson(json);

  @override
  @JsonKey(name: "kas_finance")
  final double? kasFinance;
  @override
  @JsonKey(name: "kas_brankas")
  final double? kasBrankas;
  @override
  @JsonKey(name: "kas_kasir")
  final double? kasKasir;
  @override
  @JsonKey(name: "koin")
  final double? uangKoin;
  @override
  @JsonKey(name: "selisih")
  final double? selisih;

  @override
  String toString() {
    return 'DanaKasModel(kasFinance: $kasFinance, kasBrankas: $kasBrankas, kasKasir: $kasKasir, uangKoin: $uangKoin, selisih: $selisih)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DanaKasModel &&
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, kasFinance, kasBrankas, kasKasir, uangKoin, selisih);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DanaKasModelCopyWith<_$_DanaKasModel> get copyWith =>
      __$$_DanaKasModelCopyWithImpl<_$_DanaKasModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DanaKasModelToJson(
      this,
    );
  }
}

abstract class _DanaKasModel extends DanaKasModel {
  const factory _DanaKasModel(
      {@JsonKey(name: "kas_finance") final double? kasFinance,
      @JsonKey(name: "kas_brankas") final double? kasBrankas,
      @JsonKey(name: "kas_kasir") final double? kasKasir,
      @JsonKey(name: "koin") final double? uangKoin,
      @JsonKey(name: "selisih") final double? selisih}) = _$_DanaKasModel;
  const _DanaKasModel._() : super._();

  factory _DanaKasModel.fromJson(Map<String, dynamic> json) =
      _$_DanaKasModel.fromJson;

  @override
  @JsonKey(name: "kas_finance")
  double? get kasFinance;
  @override
  @JsonKey(name: "kas_brankas")
  double? get kasBrankas;
  @override
  @JsonKey(name: "kas_kasir")
  double? get kasKasir;
  @override
  @JsonKey(name: "koin")
  double? get uangKoin;
  @override
  @JsonKey(name: "selisih")
  double? get selisih;
  @override
  @JsonKey(ignore: true)
  _$$_DanaKasModelCopyWith<_$_DanaKasModel> get copyWith =>
      throw _privateConstructorUsedError;
}

DanaRrakModel _$DanaRrakModelFromJson(Map<String, dynamic> json) {
  return _DanaRrakModel.fromJson(json);
}

/// @nodoc
mixin _$DanaRrakModel {
  @JsonKey(name: "dana_rrak")
  double? get rencanaRrak => throw _privateConstructorUsedError;
  @JsonKey(name: "fisik_dana")
  double? get fisikDanaRrak => throw _privateConstructorUsedError;
  @JsonKey(name: "nota")
  double? get notaRrak => throw _privateConstructorUsedError;
  @JsonKey(name: "selisih")
  double? get selisih => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DanaRrakModelCopyWith<DanaRrakModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DanaRrakModelCopyWith<$Res> {
  factory $DanaRrakModelCopyWith(
          DanaRrakModel value, $Res Function(DanaRrakModel) then) =
      _$DanaRrakModelCopyWithImpl<$Res, DanaRrakModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "dana_rrak") double? rencanaRrak,
      @JsonKey(name: "fisik_dana") double? fisikDanaRrak,
      @JsonKey(name: "nota") double? notaRrak,
      @JsonKey(name: "selisih") double? selisih});
}

/// @nodoc
class _$DanaRrakModelCopyWithImpl<$Res, $Val extends DanaRrakModel>
    implements $DanaRrakModelCopyWith<$Res> {
  _$DanaRrakModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_DanaRrakModelCopyWith<$Res>
    implements $DanaRrakModelCopyWith<$Res> {
  factory _$$_DanaRrakModelCopyWith(
          _$_DanaRrakModel value, $Res Function(_$_DanaRrakModel) then) =
      __$$_DanaRrakModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "dana_rrak") double? rencanaRrak,
      @JsonKey(name: "fisik_dana") double? fisikDanaRrak,
      @JsonKey(name: "nota") double? notaRrak,
      @JsonKey(name: "selisih") double? selisih});
}

/// @nodoc
class __$$_DanaRrakModelCopyWithImpl<$Res>
    extends _$DanaRrakModelCopyWithImpl<$Res, _$_DanaRrakModel>
    implements _$$_DanaRrakModelCopyWith<$Res> {
  __$$_DanaRrakModelCopyWithImpl(
      _$_DanaRrakModel _value, $Res Function(_$_DanaRrakModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rencanaRrak = freezed,
    Object? fisikDanaRrak = freezed,
    Object? notaRrak = freezed,
    Object? selisih = freezed,
  }) {
    return _then(_$_DanaRrakModel(
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

@JsonSerializable(explicitToJson: true)
class _$_DanaRrakModel extends _DanaRrakModel {
  const _$_DanaRrakModel(
      {@JsonKey(name: "dana_rrak") this.rencanaRrak,
      @JsonKey(name: "fisik_dana") this.fisikDanaRrak,
      @JsonKey(name: "nota") this.notaRrak,
      @JsonKey(name: "selisih") this.selisih})
      : super._();

  factory _$_DanaRrakModel.fromJson(Map<String, dynamic> json) =>
      _$$_DanaRrakModelFromJson(json);

  @override
  @JsonKey(name: "dana_rrak")
  final double? rencanaRrak;
  @override
  @JsonKey(name: "fisik_dana")
  final double? fisikDanaRrak;
  @override
  @JsonKey(name: "nota")
  final double? notaRrak;
  @override
  @JsonKey(name: "selisih")
  final double? selisih;

  @override
  String toString() {
    return 'DanaRrakModel(rencanaRrak: $rencanaRrak, fisikDanaRrak: $fisikDanaRrak, notaRrak: $notaRrak, selisih: $selisih)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DanaRrakModel &&
            (identical(other.rencanaRrak, rencanaRrak) ||
                other.rencanaRrak == rencanaRrak) &&
            (identical(other.fisikDanaRrak, fisikDanaRrak) ||
                other.fisikDanaRrak == fisikDanaRrak) &&
            (identical(other.notaRrak, notaRrak) ||
                other.notaRrak == notaRrak) &&
            (identical(other.selisih, selisih) || other.selisih == selisih));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, rencanaRrak, fisikDanaRrak, notaRrak, selisih);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DanaRrakModelCopyWith<_$_DanaRrakModel> get copyWith =>
      __$$_DanaRrakModelCopyWithImpl<_$_DanaRrakModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DanaRrakModelToJson(
      this,
    );
  }
}

abstract class _DanaRrakModel extends DanaRrakModel {
  const factory _DanaRrakModel(
      {@JsonKey(name: "dana_rrak") final double? rencanaRrak,
      @JsonKey(name: "fisik_dana") final double? fisikDanaRrak,
      @JsonKey(name: "nota") final double? notaRrak,
      @JsonKey(name: "selisih") final double? selisih}) = _$_DanaRrakModel;
  const _DanaRrakModel._() : super._();

  factory _DanaRrakModel.fromJson(Map<String, dynamic> json) =
      _$_DanaRrakModel.fromJson;

  @override
  @JsonKey(name: "dana_rrak")
  double? get rencanaRrak;
  @override
  @JsonKey(name: "fisik_dana")
  double? get fisikDanaRrak;
  @override
  @JsonKey(name: "nota")
  double? get notaRrak;
  @override
  @JsonKey(name: "selisih")
  double? get selisih;
  @override
  @JsonKey(ignore: true)
  _$$_DanaRrakModelCopyWith<_$_DanaRrakModel> get copyWith =>
      throw _privateConstructorUsedError;
}
