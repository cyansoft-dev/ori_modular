// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kurset.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Kurset {
  int? get id => throw _privateConstructorUsedError;
  String? get kdtk => throw _privateConstructorUsedError;
  DateTime? get tanggal => throw _privateConstructorUsedError;
  double? get nominal => throw _privateConstructorUsedError;
  String? get keterangan => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $KursetCopyWith<Kurset> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KursetCopyWith<$Res> {
  factory $KursetCopyWith(Kurset value, $Res Function(Kurset) then) =
      _$KursetCopyWithImpl<$Res, Kurset>;
  @useResult
  $Res call(
      {int? id,
      String? kdtk,
      DateTime? tanggal,
      double? nominal,
      String? keterangan});
}

/// @nodoc
class _$KursetCopyWithImpl<$Res, $Val extends Kurset>
    implements $KursetCopyWith<$Res> {
  _$KursetCopyWithImpl(this._value, this._then);

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
      tanggal: freezed == tanggal
          ? _value.tanggal
          : tanggal // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
abstract class _$$_KursetCopyWith<$Res> implements $KursetCopyWith<$Res> {
  factory _$$_KursetCopyWith(_$_Kurset value, $Res Function(_$_Kurset) then) =
      __$$_KursetCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? kdtk,
      DateTime? tanggal,
      double? nominal,
      String? keterangan});
}

/// @nodoc
class __$$_KursetCopyWithImpl<$Res>
    extends _$KursetCopyWithImpl<$Res, _$_Kurset>
    implements _$$_KursetCopyWith<$Res> {
  __$$_KursetCopyWithImpl(_$_Kurset _value, $Res Function(_$_Kurset) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? kdtk = freezed,
    Object? tanggal = freezed,
    Object? nominal = freezed,
    Object? keterangan = freezed,
  }) {
    return _then(_$_Kurset(
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
      keterangan: freezed == keterangan
          ? _value.keterangan
          : keterangan // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Kurset implements _Kurset {
  const _$_Kurset(
      {this.id, this.kdtk, this.tanggal, this.nominal, this.keterangan});

  @override
  final int? id;
  @override
  final String? kdtk;
  @override
  final DateTime? tanggal;
  @override
  final double? nominal;
  @override
  final String? keterangan;

  @override
  String toString() {
    return 'Kurset(id: $id, kdtk: $kdtk, tanggal: $tanggal, nominal: $nominal, keterangan: $keterangan)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Kurset &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.kdtk, kdtk) || other.kdtk == kdtk) &&
            (identical(other.tanggal, tanggal) || other.tanggal == tanggal) &&
            (identical(other.nominal, nominal) || other.nominal == nominal) &&
            (identical(other.keterangan, keterangan) ||
                other.keterangan == keterangan));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, kdtk, tanggal, nominal, keterangan);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KursetCopyWith<_$_Kurset> get copyWith =>
      __$$_KursetCopyWithImpl<_$_Kurset>(this, _$identity);
}

abstract class _Kurset implements Kurset {
  const factory _Kurset(
      {final int? id,
      final String? kdtk,
      final DateTime? tanggal,
      final double? nominal,
      final String? keterangan}) = _$_Kurset;

  @override
  int? get id;
  @override
  String? get kdtk;
  @override
  DateTime? get tanggal;
  @override
  double? get nominal;
  @override
  String? get keterangan;
  @override
  @JsonKey(ignore: true)
  _$$_KursetCopyWith<_$_Kurset> get copyWith =>
      throw _privateConstructorUsedError;
}
