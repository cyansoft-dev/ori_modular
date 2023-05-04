// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'summary_audit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SummaryAudit {
  int get id => throw _privateConstructorUsedError;
  String? get kdtk => throw _privateConstructorUsedError;
  DateTime? get tanggal => throw _privateConstructorUsedError;
  double get summary => throw _privateConstructorUsedError;
  List<AdjustmentAudit>? get adjust => throw _privateConstructorUsedError;
  AuditStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SummaryAuditCopyWith<SummaryAudit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SummaryAuditCopyWith<$Res> {
  factory $SummaryAuditCopyWith(
          SummaryAudit value, $Res Function(SummaryAudit) then) =
      _$SummaryAuditCopyWithImpl<$Res, SummaryAudit>;
  @useResult
  $Res call(
      {int id,
      String? kdtk,
      DateTime? tanggal,
      double summary,
      List<AdjustmentAudit>? adjust,
      AuditStatus status});
}

/// @nodoc
class _$SummaryAuditCopyWithImpl<$Res, $Val extends SummaryAudit>
    implements $SummaryAuditCopyWith<$Res> {
  _$SummaryAuditCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? kdtk = freezed,
    Object? tanggal = freezed,
    Object? summary = null,
    Object? adjust = freezed,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      kdtk: freezed == kdtk
          ? _value.kdtk
          : kdtk // ignore: cast_nullable_to_non_nullable
              as String?,
      tanggal: freezed == tanggal
          ? _value.tanggal
          : tanggal // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as double,
      adjust: freezed == adjust
          ? _value.adjust
          : adjust // ignore: cast_nullable_to_non_nullable
              as List<AdjustmentAudit>?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuditStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SummaryAuditCopyWith<$Res>
    implements $SummaryAuditCopyWith<$Res> {
  factory _$$_SummaryAuditCopyWith(
          _$_SummaryAudit value, $Res Function(_$_SummaryAudit) then) =
      __$$_SummaryAuditCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? kdtk,
      DateTime? tanggal,
      double summary,
      List<AdjustmentAudit>? adjust,
      AuditStatus status});
}

/// @nodoc
class __$$_SummaryAuditCopyWithImpl<$Res>
    extends _$SummaryAuditCopyWithImpl<$Res, _$_SummaryAudit>
    implements _$$_SummaryAuditCopyWith<$Res> {
  __$$_SummaryAuditCopyWithImpl(
      _$_SummaryAudit _value, $Res Function(_$_SummaryAudit) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? kdtk = freezed,
    Object? tanggal = freezed,
    Object? summary = null,
    Object? adjust = freezed,
    Object? status = null,
  }) {
    return _then(_$_SummaryAudit(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      kdtk: freezed == kdtk
          ? _value.kdtk
          : kdtk // ignore: cast_nullable_to_non_nullable
              as String?,
      tanggal: freezed == tanggal
          ? _value.tanggal
          : tanggal // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as double,
      adjust: freezed == adjust
          ? _value._adjust
          : adjust // ignore: cast_nullable_to_non_nullable
              as List<AdjustmentAudit>?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuditStatus,
    ));
  }
}

/// @nodoc

class _$_SummaryAudit implements _SummaryAudit {
  const _$_SummaryAudit(
      {this.id = 0,
      this.kdtk,
      this.tanggal,
      this.summary = 0.0,
      final List<AdjustmentAudit>? adjust,
      this.status = AuditStatus.initial})
      : _adjust = adjust;

  @override
  @JsonKey()
  final int id;
  @override
  final String? kdtk;
  @override
  final DateTime? tanggal;
  @override
  @JsonKey()
  final double summary;
  final List<AdjustmentAudit>? _adjust;
  @override
  List<AdjustmentAudit>? get adjust {
    final value = _adjust;
    if (value == null) return null;
    if (_adjust is EqualUnmodifiableListView) return _adjust;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final AuditStatus status;

  @override
  String toString() {
    return 'SummaryAudit(id: $id, kdtk: $kdtk, tanggal: $tanggal, summary: $summary, adjust: $adjust, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SummaryAudit &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.kdtk, kdtk) || other.kdtk == kdtk) &&
            (identical(other.tanggal, tanggal) || other.tanggal == tanggal) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            const DeepCollectionEquality().equals(other._adjust, _adjust) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, kdtk, tanggal, summary,
      const DeepCollectionEquality().hash(_adjust), status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SummaryAuditCopyWith<_$_SummaryAudit> get copyWith =>
      __$$_SummaryAuditCopyWithImpl<_$_SummaryAudit>(this, _$identity);
}

abstract class _SummaryAudit implements SummaryAudit {
  const factory _SummaryAudit(
      {final int id,
      final String? kdtk,
      final DateTime? tanggal,
      final double summary,
      final List<AdjustmentAudit>? adjust,
      final AuditStatus status}) = _$_SummaryAudit;

  @override
  int get id;
  @override
  String? get kdtk;
  @override
  DateTime? get tanggal;
  @override
  double get summary;
  @override
  List<AdjustmentAudit>? get adjust;
  @override
  AuditStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_SummaryAuditCopyWith<_$_SummaryAudit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AdjustmentAudit {
  int get id => throw _privateConstructorUsedError;
  double get nominal => throw _privateConstructorUsedError;
  String? get desc => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdjustmentAuditCopyWith<AdjustmentAudit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdjustmentAuditCopyWith<$Res> {
  factory $AdjustmentAuditCopyWith(
          AdjustmentAudit value, $Res Function(AdjustmentAudit) then) =
      _$AdjustmentAuditCopyWithImpl<$Res, AdjustmentAudit>;
  @useResult
  $Res call({int id, double nominal, String? desc});
}

/// @nodoc
class _$AdjustmentAuditCopyWithImpl<$Res, $Val extends AdjustmentAudit>
    implements $AdjustmentAuditCopyWith<$Res> {
  _$AdjustmentAuditCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nominal = null,
    Object? desc = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nominal: null == nominal
          ? _value.nominal
          : nominal // ignore: cast_nullable_to_non_nullable
              as double,
      desc: freezed == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AdjustmentAuditCopyWith<$Res>
    implements $AdjustmentAuditCopyWith<$Res> {
  factory _$$_AdjustmentAuditCopyWith(
          _$_AdjustmentAudit value, $Res Function(_$_AdjustmentAudit) then) =
      __$$_AdjustmentAuditCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, double nominal, String? desc});
}

/// @nodoc
class __$$_AdjustmentAuditCopyWithImpl<$Res>
    extends _$AdjustmentAuditCopyWithImpl<$Res, _$_AdjustmentAudit>
    implements _$$_AdjustmentAuditCopyWith<$Res> {
  __$$_AdjustmentAuditCopyWithImpl(
      _$_AdjustmentAudit _value, $Res Function(_$_AdjustmentAudit) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nominal = null,
    Object? desc = freezed,
  }) {
    return _then(_$_AdjustmentAudit(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nominal: null == nominal
          ? _value.nominal
          : nominal // ignore: cast_nullable_to_non_nullable
              as double,
      desc: freezed == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AdjustmentAudit implements _AdjustmentAudit {
  const _$_AdjustmentAudit({this.id = 0, this.nominal = 0.0, this.desc});

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final double nominal;
  @override
  final String? desc;

  @override
  String toString() {
    return 'AdjustmentAudit(id: $id, nominal: $nominal, desc: $desc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AdjustmentAudit &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nominal, nominal) || other.nominal == nominal) &&
            (identical(other.desc, desc) || other.desc == desc));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, nominal, desc);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AdjustmentAuditCopyWith<_$_AdjustmentAudit> get copyWith =>
      __$$_AdjustmentAuditCopyWithImpl<_$_AdjustmentAudit>(this, _$identity);
}

abstract class _AdjustmentAudit implements AdjustmentAudit {
  const factory _AdjustmentAudit(
      {final int id,
      final double nominal,
      final String? desc}) = _$_AdjustmentAudit;

  @override
  int get id;
  @override
  double get nominal;
  @override
  String? get desc;
  @override
  @JsonKey(ignore: true)
  _$$_AdjustmentAuditCopyWith<_$_AdjustmentAudit> get copyWith =>
      throw _privateConstructorUsedError;
}
