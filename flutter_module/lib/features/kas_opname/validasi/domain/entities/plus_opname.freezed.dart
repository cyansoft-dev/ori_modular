// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plus_opname.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PlusOpname {
  int? get id => throw _privateConstructorUsedError;
  String? get kdtk => throw _privateConstructorUsedError;
  double? get nominal => throw _privateConstructorUsedError;
  String? get deskripsi => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlusOpnameCopyWith<PlusOpname> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlusOpnameCopyWith<$Res> {
  factory $PlusOpnameCopyWith(
          PlusOpname value, $Res Function(PlusOpname) then) =
      _$PlusOpnameCopyWithImpl<$Res, PlusOpname>;
  @useResult
  $Res call({int? id, String? kdtk, double? nominal, String? deskripsi});
}

/// @nodoc
class _$PlusOpnameCopyWithImpl<$Res, $Val extends PlusOpname>
    implements $PlusOpnameCopyWith<$Res> {
  _$PlusOpnameCopyWithImpl(this._value, this._then);

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
    Object? deskripsi = freezed,
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
      deskripsi: freezed == deskripsi
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlusOpnameCopyWith<$Res>
    implements $PlusOpnameCopyWith<$Res> {
  factory _$$_PlusOpnameCopyWith(
          _$_PlusOpname value, $Res Function(_$_PlusOpname) then) =
      __$$_PlusOpnameCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? kdtk, double? nominal, String? deskripsi});
}

/// @nodoc
class __$$_PlusOpnameCopyWithImpl<$Res>
    extends _$PlusOpnameCopyWithImpl<$Res, _$_PlusOpname>
    implements _$$_PlusOpnameCopyWith<$Res> {
  __$$_PlusOpnameCopyWithImpl(
      _$_PlusOpname _value, $Res Function(_$_PlusOpname) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? kdtk = freezed,
    Object? nominal = freezed,
    Object? deskripsi = freezed,
  }) {
    return _then(_$_PlusOpname(
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
      deskripsi: freezed == deskripsi
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_PlusOpname implements _PlusOpname {
  const _$_PlusOpname({this.id, this.kdtk, this.nominal, this.deskripsi});

  @override
  final int? id;
  @override
  final String? kdtk;
  @override
  final double? nominal;
  @override
  final String? deskripsi;

  @override
  String toString() {
    return 'PlusOpname(id: $id, kdtk: $kdtk, nominal: $nominal, deskripsi: $deskripsi)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlusOpname &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.kdtk, kdtk) || other.kdtk == kdtk) &&
            (identical(other.nominal, nominal) || other.nominal == nominal) &&
            (identical(other.deskripsi, deskripsi) ||
                other.deskripsi == deskripsi));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, kdtk, nominal, deskripsi);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlusOpnameCopyWith<_$_PlusOpname> get copyWith =>
      __$$_PlusOpnameCopyWithImpl<_$_PlusOpname>(this, _$identity);
}

abstract class _PlusOpname implements PlusOpname {
  const factory _PlusOpname(
      {final int? id,
      final String? kdtk,
      final double? nominal,
      final String? deskripsi}) = _$_PlusOpname;

  @override
  int? get id;
  @override
  String? get kdtk;
  @override
  double? get nominal;
  @override
  String? get deskripsi;
  @override
  @JsonKey(ignore: true)
  _$$_PlusOpnameCopyWith<_$_PlusOpname> get copyWith =>
      throw _privateConstructorUsedError;
}
