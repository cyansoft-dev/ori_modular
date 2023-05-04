// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lock_key.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LockKey {
  String? get vector => throw _privateConstructorUsedError;
  String? get secret => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LockKeyCopyWith<LockKey> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LockKeyCopyWith<$Res> {
  factory $LockKeyCopyWith(LockKey value, $Res Function(LockKey) then) =
      _$LockKeyCopyWithImpl<$Res, LockKey>;
  @useResult
  $Res call({String? vector, String? secret});
}

/// @nodoc
class _$LockKeyCopyWithImpl<$Res, $Val extends LockKey>
    implements $LockKeyCopyWith<$Res> {
  _$LockKeyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vector = freezed,
    Object? secret = freezed,
  }) {
    return _then(_value.copyWith(
      vector: freezed == vector
          ? _value.vector
          : vector // ignore: cast_nullable_to_non_nullable
              as String?,
      secret: freezed == secret
          ? _value.secret
          : secret // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LockKeyCopyWith<$Res> implements $LockKeyCopyWith<$Res> {
  factory _$$_LockKeyCopyWith(
          _$_LockKey value, $Res Function(_$_LockKey) then) =
      __$$_LockKeyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? vector, String? secret});
}

/// @nodoc
class __$$_LockKeyCopyWithImpl<$Res>
    extends _$LockKeyCopyWithImpl<$Res, _$_LockKey>
    implements _$$_LockKeyCopyWith<$Res> {
  __$$_LockKeyCopyWithImpl(_$_LockKey _value, $Res Function(_$_LockKey) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vector = freezed,
    Object? secret = freezed,
  }) {
    return _then(_$_LockKey(
      vector: freezed == vector
          ? _value.vector
          : vector // ignore: cast_nullable_to_non_nullable
              as String?,
      secret: freezed == secret
          ? _value.secret
          : secret // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_LockKey implements _LockKey {
  const _$_LockKey({this.vector, this.secret});

  @override
  final String? vector;
  @override
  final String? secret;

  @override
  String toString() {
    return 'LockKey(vector: $vector, secret: $secret)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LockKey &&
            (identical(other.vector, vector) || other.vector == vector) &&
            (identical(other.secret, secret) || other.secret == secret));
  }

  @override
  int get hashCode => Object.hash(runtimeType, vector, secret);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LockKeyCopyWith<_$_LockKey> get copyWith =>
      __$$_LockKeyCopyWithImpl<_$_LockKey>(this, _$identity);
}

abstract class _LockKey implements LockKey {
  const factory _LockKey({final String? vector, final String? secret}) =
      _$_LockKey;

  @override
  String? get vector;
  @override
  String? get secret;
  @override
  @JsonKey(ignore: true)
  _$$_LockKeyCopyWith<_$_LockKey> get copyWith =>
      throw _privateConstructorUsedError;
}
