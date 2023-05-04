// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? code, String? message) authorization,
    required TResult Function() noNetwork,
    required TResult Function(int? code, String? message) server,
    required TResult Function(String? message) platform,
    required TResult Function(String? message) cache,
    required TResult Function(String? message) another,
    required TResult Function(String? message) location,
    required TResult Function(String? message) parse,
    required TResult Function(String? message) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? code, String? message)? authorization,
    TResult? Function()? noNetwork,
    TResult? Function(int? code, String? message)? server,
    TResult? Function(String? message)? platform,
    TResult? Function(String? message)? cache,
    TResult? Function(String? message)? another,
    TResult? Function(String? message)? location,
    TResult? Function(String? message)? parse,
    TResult? Function(String? message)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? code, String? message)? authorization,
    TResult Function()? noNetwork,
    TResult Function(int? code, String? message)? server,
    TResult Function(String? message)? platform,
    TResult Function(String? message)? cache,
    TResult Function(String? message)? another,
    TResult Function(String? message)? location,
    TResult Function(String? message)? parse,
    TResult Function(String? message)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthorizationFailure value) authorization,
    required TResult Function(NoNetworkFailure value) noNetwork,
    required TResult Function(ServerFailure value) server,
    required TResult Function(PlatformFailure value) platform,
    required TResult Function(CacheFailure value) cache,
    required TResult Function(AnotherFailure value) another,
    required TResult Function(LocationFailure value) location,
    required TResult Function(ParseFailure value) parse,
    required TResult Function(EmptyFailure value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthorizationFailure value)? authorization,
    TResult? Function(NoNetworkFailure value)? noNetwork,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(PlatformFailure value)? platform,
    TResult? Function(CacheFailure value)? cache,
    TResult? Function(AnotherFailure value)? another,
    TResult? Function(LocationFailure value)? location,
    TResult? Function(ParseFailure value)? parse,
    TResult? Function(EmptyFailure value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthorizationFailure value)? authorization,
    TResult Function(NoNetworkFailure value)? noNetwork,
    TResult Function(ServerFailure value)? server,
    TResult Function(PlatformFailure value)? platform,
    TResult Function(CacheFailure value)? cache,
    TResult Function(AnotherFailure value)? another,
    TResult Function(LocationFailure value)? location,
    TResult Function(ParseFailure value)? parse,
    TResult Function(EmptyFailure value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthorizationFailureCopyWith<$Res> {
  factory _$$AuthorizationFailureCopyWith(_$AuthorizationFailure value,
          $Res Function(_$AuthorizationFailure) then) =
      __$$AuthorizationFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({int? code, String? message});
}

/// @nodoc
class __$$AuthorizationFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$AuthorizationFailure>
    implements _$$AuthorizationFailureCopyWith<$Res> {
  __$$AuthorizationFailureCopyWithImpl(_$AuthorizationFailure _value,
      $Res Function(_$AuthorizationFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_$AuthorizationFailure(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AuthorizationFailure extends AuthorizationFailure {
  const _$AuthorizationFailure({this.code, this.message}) : super._();

  @override
  final int? code;
  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.authorization(code: $code, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorizationFailure &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthorizationFailureCopyWith<_$AuthorizationFailure> get copyWith =>
      __$$AuthorizationFailureCopyWithImpl<_$AuthorizationFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? code, String? message) authorization,
    required TResult Function() noNetwork,
    required TResult Function(int? code, String? message) server,
    required TResult Function(String? message) platform,
    required TResult Function(String? message) cache,
    required TResult Function(String? message) another,
    required TResult Function(String? message) location,
    required TResult Function(String? message) parse,
    required TResult Function(String? message) empty,
  }) {
    return authorization(code, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? code, String? message)? authorization,
    TResult? Function()? noNetwork,
    TResult? Function(int? code, String? message)? server,
    TResult? Function(String? message)? platform,
    TResult? Function(String? message)? cache,
    TResult? Function(String? message)? another,
    TResult? Function(String? message)? location,
    TResult? Function(String? message)? parse,
    TResult? Function(String? message)? empty,
  }) {
    return authorization?.call(code, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? code, String? message)? authorization,
    TResult Function()? noNetwork,
    TResult Function(int? code, String? message)? server,
    TResult Function(String? message)? platform,
    TResult Function(String? message)? cache,
    TResult Function(String? message)? another,
    TResult Function(String? message)? location,
    TResult Function(String? message)? parse,
    TResult Function(String? message)? empty,
    required TResult orElse(),
  }) {
    if (authorization != null) {
      return authorization(code, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthorizationFailure value) authorization,
    required TResult Function(NoNetworkFailure value) noNetwork,
    required TResult Function(ServerFailure value) server,
    required TResult Function(PlatformFailure value) platform,
    required TResult Function(CacheFailure value) cache,
    required TResult Function(AnotherFailure value) another,
    required TResult Function(LocationFailure value) location,
    required TResult Function(ParseFailure value) parse,
    required TResult Function(EmptyFailure value) empty,
  }) {
    return authorization(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthorizationFailure value)? authorization,
    TResult? Function(NoNetworkFailure value)? noNetwork,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(PlatformFailure value)? platform,
    TResult? Function(CacheFailure value)? cache,
    TResult? Function(AnotherFailure value)? another,
    TResult? Function(LocationFailure value)? location,
    TResult? Function(ParseFailure value)? parse,
    TResult? Function(EmptyFailure value)? empty,
  }) {
    return authorization?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthorizationFailure value)? authorization,
    TResult Function(NoNetworkFailure value)? noNetwork,
    TResult Function(ServerFailure value)? server,
    TResult Function(PlatformFailure value)? platform,
    TResult Function(CacheFailure value)? cache,
    TResult Function(AnotherFailure value)? another,
    TResult Function(LocationFailure value)? location,
    TResult Function(ParseFailure value)? parse,
    TResult Function(EmptyFailure value)? empty,
    required TResult orElse(),
  }) {
    if (authorization != null) {
      return authorization(this);
    }
    return orElse();
  }
}

abstract class AuthorizationFailure extends Failure {
  const factory AuthorizationFailure({final int? code, final String? message}) =
      _$AuthorizationFailure;
  const AuthorizationFailure._() : super._();

  int? get code;
  String? get message;
  @JsonKey(ignore: true)
  _$$AuthorizationFailureCopyWith<_$AuthorizationFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoNetworkFailureCopyWith<$Res> {
  factory _$$NoNetworkFailureCopyWith(
          _$NoNetworkFailure value, $Res Function(_$NoNetworkFailure) then) =
      __$$NoNetworkFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoNetworkFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$NoNetworkFailure>
    implements _$$NoNetworkFailureCopyWith<$Res> {
  __$$NoNetworkFailureCopyWithImpl(
      _$NoNetworkFailure _value, $Res Function(_$NoNetworkFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoNetworkFailure extends NoNetworkFailure {
  const _$NoNetworkFailure() : super._();

  @override
  String toString() {
    return 'Failure.noNetwork()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoNetworkFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? code, String? message) authorization,
    required TResult Function() noNetwork,
    required TResult Function(int? code, String? message) server,
    required TResult Function(String? message) platform,
    required TResult Function(String? message) cache,
    required TResult Function(String? message) another,
    required TResult Function(String? message) location,
    required TResult Function(String? message) parse,
    required TResult Function(String? message) empty,
  }) {
    return noNetwork();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? code, String? message)? authorization,
    TResult? Function()? noNetwork,
    TResult? Function(int? code, String? message)? server,
    TResult? Function(String? message)? platform,
    TResult? Function(String? message)? cache,
    TResult? Function(String? message)? another,
    TResult? Function(String? message)? location,
    TResult? Function(String? message)? parse,
    TResult? Function(String? message)? empty,
  }) {
    return noNetwork?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? code, String? message)? authorization,
    TResult Function()? noNetwork,
    TResult Function(int? code, String? message)? server,
    TResult Function(String? message)? platform,
    TResult Function(String? message)? cache,
    TResult Function(String? message)? another,
    TResult Function(String? message)? location,
    TResult Function(String? message)? parse,
    TResult Function(String? message)? empty,
    required TResult orElse(),
  }) {
    if (noNetwork != null) {
      return noNetwork();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthorizationFailure value) authorization,
    required TResult Function(NoNetworkFailure value) noNetwork,
    required TResult Function(ServerFailure value) server,
    required TResult Function(PlatformFailure value) platform,
    required TResult Function(CacheFailure value) cache,
    required TResult Function(AnotherFailure value) another,
    required TResult Function(LocationFailure value) location,
    required TResult Function(ParseFailure value) parse,
    required TResult Function(EmptyFailure value) empty,
  }) {
    return noNetwork(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthorizationFailure value)? authorization,
    TResult? Function(NoNetworkFailure value)? noNetwork,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(PlatformFailure value)? platform,
    TResult? Function(CacheFailure value)? cache,
    TResult? Function(AnotherFailure value)? another,
    TResult? Function(LocationFailure value)? location,
    TResult? Function(ParseFailure value)? parse,
    TResult? Function(EmptyFailure value)? empty,
  }) {
    return noNetwork?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthorizationFailure value)? authorization,
    TResult Function(NoNetworkFailure value)? noNetwork,
    TResult Function(ServerFailure value)? server,
    TResult Function(PlatformFailure value)? platform,
    TResult Function(CacheFailure value)? cache,
    TResult Function(AnotherFailure value)? another,
    TResult Function(LocationFailure value)? location,
    TResult Function(ParseFailure value)? parse,
    TResult Function(EmptyFailure value)? empty,
    required TResult orElse(),
  }) {
    if (noNetwork != null) {
      return noNetwork(this);
    }
    return orElse();
  }
}

abstract class NoNetworkFailure extends Failure {
  const factory NoNetworkFailure() = _$NoNetworkFailure;
  const NoNetworkFailure._() : super._();
}

/// @nodoc
abstract class _$$ServerFailureCopyWith<$Res> {
  factory _$$ServerFailureCopyWith(
          _$ServerFailure value, $Res Function(_$ServerFailure) then) =
      __$$ServerFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({int? code, String? message});
}

/// @nodoc
class __$$ServerFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ServerFailure>
    implements _$$ServerFailureCopyWith<$Res> {
  __$$ServerFailureCopyWithImpl(
      _$ServerFailure _value, $Res Function(_$ServerFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_$ServerFailure(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ServerFailure extends ServerFailure {
  const _$ServerFailure({this.code, this.message}) : super._();

  @override
  final int? code;
  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.server(code: $code, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerFailure &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerFailureCopyWith<_$ServerFailure> get copyWith =>
      __$$ServerFailureCopyWithImpl<_$ServerFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? code, String? message) authorization,
    required TResult Function() noNetwork,
    required TResult Function(int? code, String? message) server,
    required TResult Function(String? message) platform,
    required TResult Function(String? message) cache,
    required TResult Function(String? message) another,
    required TResult Function(String? message) location,
    required TResult Function(String? message) parse,
    required TResult Function(String? message) empty,
  }) {
    return server(code, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? code, String? message)? authorization,
    TResult? Function()? noNetwork,
    TResult? Function(int? code, String? message)? server,
    TResult? Function(String? message)? platform,
    TResult? Function(String? message)? cache,
    TResult? Function(String? message)? another,
    TResult? Function(String? message)? location,
    TResult? Function(String? message)? parse,
    TResult? Function(String? message)? empty,
  }) {
    return server?.call(code, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? code, String? message)? authorization,
    TResult Function()? noNetwork,
    TResult Function(int? code, String? message)? server,
    TResult Function(String? message)? platform,
    TResult Function(String? message)? cache,
    TResult Function(String? message)? another,
    TResult Function(String? message)? location,
    TResult Function(String? message)? parse,
    TResult Function(String? message)? empty,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(code, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthorizationFailure value) authorization,
    required TResult Function(NoNetworkFailure value) noNetwork,
    required TResult Function(ServerFailure value) server,
    required TResult Function(PlatformFailure value) platform,
    required TResult Function(CacheFailure value) cache,
    required TResult Function(AnotherFailure value) another,
    required TResult Function(LocationFailure value) location,
    required TResult Function(ParseFailure value) parse,
    required TResult Function(EmptyFailure value) empty,
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthorizationFailure value)? authorization,
    TResult? Function(NoNetworkFailure value)? noNetwork,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(PlatformFailure value)? platform,
    TResult? Function(CacheFailure value)? cache,
    TResult? Function(AnotherFailure value)? another,
    TResult? Function(LocationFailure value)? location,
    TResult? Function(ParseFailure value)? parse,
    TResult? Function(EmptyFailure value)? empty,
  }) {
    return server?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthorizationFailure value)? authorization,
    TResult Function(NoNetworkFailure value)? noNetwork,
    TResult Function(ServerFailure value)? server,
    TResult Function(PlatformFailure value)? platform,
    TResult Function(CacheFailure value)? cache,
    TResult Function(AnotherFailure value)? another,
    TResult Function(LocationFailure value)? location,
    TResult Function(ParseFailure value)? parse,
    TResult Function(EmptyFailure value)? empty,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class ServerFailure extends Failure {
  const factory ServerFailure({final int? code, final String? message}) =
      _$ServerFailure;
  const ServerFailure._() : super._();

  int? get code;
  String? get message;
  @JsonKey(ignore: true)
  _$$ServerFailureCopyWith<_$ServerFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlatformFailureCopyWith<$Res> {
  factory _$$PlatformFailureCopyWith(
          _$PlatformFailure value, $Res Function(_$PlatformFailure) then) =
      __$$PlatformFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$PlatformFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$PlatformFailure>
    implements _$$PlatformFailureCopyWith<$Res> {
  __$$PlatformFailureCopyWithImpl(
      _$PlatformFailure _value, $Res Function(_$PlatformFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$PlatformFailure(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PlatformFailure extends PlatformFailure {
  const _$PlatformFailure({this.message}) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.platform(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlatformFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlatformFailureCopyWith<_$PlatformFailure> get copyWith =>
      __$$PlatformFailureCopyWithImpl<_$PlatformFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? code, String? message) authorization,
    required TResult Function() noNetwork,
    required TResult Function(int? code, String? message) server,
    required TResult Function(String? message) platform,
    required TResult Function(String? message) cache,
    required TResult Function(String? message) another,
    required TResult Function(String? message) location,
    required TResult Function(String? message) parse,
    required TResult Function(String? message) empty,
  }) {
    return platform(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? code, String? message)? authorization,
    TResult? Function()? noNetwork,
    TResult? Function(int? code, String? message)? server,
    TResult? Function(String? message)? platform,
    TResult? Function(String? message)? cache,
    TResult? Function(String? message)? another,
    TResult? Function(String? message)? location,
    TResult? Function(String? message)? parse,
    TResult? Function(String? message)? empty,
  }) {
    return platform?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? code, String? message)? authorization,
    TResult Function()? noNetwork,
    TResult Function(int? code, String? message)? server,
    TResult Function(String? message)? platform,
    TResult Function(String? message)? cache,
    TResult Function(String? message)? another,
    TResult Function(String? message)? location,
    TResult Function(String? message)? parse,
    TResult Function(String? message)? empty,
    required TResult orElse(),
  }) {
    if (platform != null) {
      return platform(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthorizationFailure value) authorization,
    required TResult Function(NoNetworkFailure value) noNetwork,
    required TResult Function(ServerFailure value) server,
    required TResult Function(PlatformFailure value) platform,
    required TResult Function(CacheFailure value) cache,
    required TResult Function(AnotherFailure value) another,
    required TResult Function(LocationFailure value) location,
    required TResult Function(ParseFailure value) parse,
    required TResult Function(EmptyFailure value) empty,
  }) {
    return platform(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthorizationFailure value)? authorization,
    TResult? Function(NoNetworkFailure value)? noNetwork,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(PlatformFailure value)? platform,
    TResult? Function(CacheFailure value)? cache,
    TResult? Function(AnotherFailure value)? another,
    TResult? Function(LocationFailure value)? location,
    TResult? Function(ParseFailure value)? parse,
    TResult? Function(EmptyFailure value)? empty,
  }) {
    return platform?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthorizationFailure value)? authorization,
    TResult Function(NoNetworkFailure value)? noNetwork,
    TResult Function(ServerFailure value)? server,
    TResult Function(PlatformFailure value)? platform,
    TResult Function(CacheFailure value)? cache,
    TResult Function(AnotherFailure value)? another,
    TResult Function(LocationFailure value)? location,
    TResult Function(ParseFailure value)? parse,
    TResult Function(EmptyFailure value)? empty,
    required TResult orElse(),
  }) {
    if (platform != null) {
      return platform(this);
    }
    return orElse();
  }
}

abstract class PlatformFailure extends Failure {
  const factory PlatformFailure({final String? message}) = _$PlatformFailure;
  const PlatformFailure._() : super._();

  String? get message;
  @JsonKey(ignore: true)
  _$$PlatformFailureCopyWith<_$PlatformFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CacheFailureCopyWith<$Res> {
  factory _$$CacheFailureCopyWith(
          _$CacheFailure value, $Res Function(_$CacheFailure) then) =
      __$$CacheFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$CacheFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$CacheFailure>
    implements _$$CacheFailureCopyWith<$Res> {
  __$$CacheFailureCopyWithImpl(
      _$CacheFailure _value, $Res Function(_$CacheFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$CacheFailure(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CacheFailure extends CacheFailure {
  const _$CacheFailure({this.message}) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.cache(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CacheFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CacheFailureCopyWith<_$CacheFailure> get copyWith =>
      __$$CacheFailureCopyWithImpl<_$CacheFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? code, String? message) authorization,
    required TResult Function() noNetwork,
    required TResult Function(int? code, String? message) server,
    required TResult Function(String? message) platform,
    required TResult Function(String? message) cache,
    required TResult Function(String? message) another,
    required TResult Function(String? message) location,
    required TResult Function(String? message) parse,
    required TResult Function(String? message) empty,
  }) {
    return cache(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? code, String? message)? authorization,
    TResult? Function()? noNetwork,
    TResult? Function(int? code, String? message)? server,
    TResult? Function(String? message)? platform,
    TResult? Function(String? message)? cache,
    TResult? Function(String? message)? another,
    TResult? Function(String? message)? location,
    TResult? Function(String? message)? parse,
    TResult? Function(String? message)? empty,
  }) {
    return cache?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? code, String? message)? authorization,
    TResult Function()? noNetwork,
    TResult Function(int? code, String? message)? server,
    TResult Function(String? message)? platform,
    TResult Function(String? message)? cache,
    TResult Function(String? message)? another,
    TResult Function(String? message)? location,
    TResult Function(String? message)? parse,
    TResult Function(String? message)? empty,
    required TResult orElse(),
  }) {
    if (cache != null) {
      return cache(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthorizationFailure value) authorization,
    required TResult Function(NoNetworkFailure value) noNetwork,
    required TResult Function(ServerFailure value) server,
    required TResult Function(PlatformFailure value) platform,
    required TResult Function(CacheFailure value) cache,
    required TResult Function(AnotherFailure value) another,
    required TResult Function(LocationFailure value) location,
    required TResult Function(ParseFailure value) parse,
    required TResult Function(EmptyFailure value) empty,
  }) {
    return cache(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthorizationFailure value)? authorization,
    TResult? Function(NoNetworkFailure value)? noNetwork,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(PlatformFailure value)? platform,
    TResult? Function(CacheFailure value)? cache,
    TResult? Function(AnotherFailure value)? another,
    TResult? Function(LocationFailure value)? location,
    TResult? Function(ParseFailure value)? parse,
    TResult? Function(EmptyFailure value)? empty,
  }) {
    return cache?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthorizationFailure value)? authorization,
    TResult Function(NoNetworkFailure value)? noNetwork,
    TResult Function(ServerFailure value)? server,
    TResult Function(PlatformFailure value)? platform,
    TResult Function(CacheFailure value)? cache,
    TResult Function(AnotherFailure value)? another,
    TResult Function(LocationFailure value)? location,
    TResult Function(ParseFailure value)? parse,
    TResult Function(EmptyFailure value)? empty,
    required TResult orElse(),
  }) {
    if (cache != null) {
      return cache(this);
    }
    return orElse();
  }
}

abstract class CacheFailure extends Failure {
  const factory CacheFailure({final String? message}) = _$CacheFailure;
  const CacheFailure._() : super._();

  String? get message;
  @JsonKey(ignore: true)
  _$$CacheFailureCopyWith<_$CacheFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AnotherFailureCopyWith<$Res> {
  factory _$$AnotherFailureCopyWith(
          _$AnotherFailure value, $Res Function(_$AnotherFailure) then) =
      __$$AnotherFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$AnotherFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$AnotherFailure>
    implements _$$AnotherFailureCopyWith<$Res> {
  __$$AnotherFailureCopyWithImpl(
      _$AnotherFailure _value, $Res Function(_$AnotherFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$AnotherFailure(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AnotherFailure extends AnotherFailure {
  const _$AnotherFailure({this.message}) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.another(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnotherFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnotherFailureCopyWith<_$AnotherFailure> get copyWith =>
      __$$AnotherFailureCopyWithImpl<_$AnotherFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? code, String? message) authorization,
    required TResult Function() noNetwork,
    required TResult Function(int? code, String? message) server,
    required TResult Function(String? message) platform,
    required TResult Function(String? message) cache,
    required TResult Function(String? message) another,
    required TResult Function(String? message) location,
    required TResult Function(String? message) parse,
    required TResult Function(String? message) empty,
  }) {
    return another(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? code, String? message)? authorization,
    TResult? Function()? noNetwork,
    TResult? Function(int? code, String? message)? server,
    TResult? Function(String? message)? platform,
    TResult? Function(String? message)? cache,
    TResult? Function(String? message)? another,
    TResult? Function(String? message)? location,
    TResult? Function(String? message)? parse,
    TResult? Function(String? message)? empty,
  }) {
    return another?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? code, String? message)? authorization,
    TResult Function()? noNetwork,
    TResult Function(int? code, String? message)? server,
    TResult Function(String? message)? platform,
    TResult Function(String? message)? cache,
    TResult Function(String? message)? another,
    TResult Function(String? message)? location,
    TResult Function(String? message)? parse,
    TResult Function(String? message)? empty,
    required TResult orElse(),
  }) {
    if (another != null) {
      return another(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthorizationFailure value) authorization,
    required TResult Function(NoNetworkFailure value) noNetwork,
    required TResult Function(ServerFailure value) server,
    required TResult Function(PlatformFailure value) platform,
    required TResult Function(CacheFailure value) cache,
    required TResult Function(AnotherFailure value) another,
    required TResult Function(LocationFailure value) location,
    required TResult Function(ParseFailure value) parse,
    required TResult Function(EmptyFailure value) empty,
  }) {
    return another(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthorizationFailure value)? authorization,
    TResult? Function(NoNetworkFailure value)? noNetwork,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(PlatformFailure value)? platform,
    TResult? Function(CacheFailure value)? cache,
    TResult? Function(AnotherFailure value)? another,
    TResult? Function(LocationFailure value)? location,
    TResult? Function(ParseFailure value)? parse,
    TResult? Function(EmptyFailure value)? empty,
  }) {
    return another?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthorizationFailure value)? authorization,
    TResult Function(NoNetworkFailure value)? noNetwork,
    TResult Function(ServerFailure value)? server,
    TResult Function(PlatformFailure value)? platform,
    TResult Function(CacheFailure value)? cache,
    TResult Function(AnotherFailure value)? another,
    TResult Function(LocationFailure value)? location,
    TResult Function(ParseFailure value)? parse,
    TResult Function(EmptyFailure value)? empty,
    required TResult orElse(),
  }) {
    if (another != null) {
      return another(this);
    }
    return orElse();
  }
}

abstract class AnotherFailure extends Failure {
  const factory AnotherFailure({final String? message}) = _$AnotherFailure;
  const AnotherFailure._() : super._();

  String? get message;
  @JsonKey(ignore: true)
  _$$AnotherFailureCopyWith<_$AnotherFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocationFailureCopyWith<$Res> {
  factory _$$LocationFailureCopyWith(
          _$LocationFailure value, $Res Function(_$LocationFailure) then) =
      __$$LocationFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$LocationFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$LocationFailure>
    implements _$$LocationFailureCopyWith<$Res> {
  __$$LocationFailureCopyWithImpl(
      _$LocationFailure _value, $Res Function(_$LocationFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$LocationFailure(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LocationFailure extends LocationFailure {
  const _$LocationFailure({this.message}) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.location(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationFailureCopyWith<_$LocationFailure> get copyWith =>
      __$$LocationFailureCopyWithImpl<_$LocationFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? code, String? message) authorization,
    required TResult Function() noNetwork,
    required TResult Function(int? code, String? message) server,
    required TResult Function(String? message) platform,
    required TResult Function(String? message) cache,
    required TResult Function(String? message) another,
    required TResult Function(String? message) location,
    required TResult Function(String? message) parse,
    required TResult Function(String? message) empty,
  }) {
    return location(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? code, String? message)? authorization,
    TResult? Function()? noNetwork,
    TResult? Function(int? code, String? message)? server,
    TResult? Function(String? message)? platform,
    TResult? Function(String? message)? cache,
    TResult? Function(String? message)? another,
    TResult? Function(String? message)? location,
    TResult? Function(String? message)? parse,
    TResult? Function(String? message)? empty,
  }) {
    return location?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? code, String? message)? authorization,
    TResult Function()? noNetwork,
    TResult Function(int? code, String? message)? server,
    TResult Function(String? message)? platform,
    TResult Function(String? message)? cache,
    TResult Function(String? message)? another,
    TResult Function(String? message)? location,
    TResult Function(String? message)? parse,
    TResult Function(String? message)? empty,
    required TResult orElse(),
  }) {
    if (location != null) {
      return location(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthorizationFailure value) authorization,
    required TResult Function(NoNetworkFailure value) noNetwork,
    required TResult Function(ServerFailure value) server,
    required TResult Function(PlatformFailure value) platform,
    required TResult Function(CacheFailure value) cache,
    required TResult Function(AnotherFailure value) another,
    required TResult Function(LocationFailure value) location,
    required TResult Function(ParseFailure value) parse,
    required TResult Function(EmptyFailure value) empty,
  }) {
    return location(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthorizationFailure value)? authorization,
    TResult? Function(NoNetworkFailure value)? noNetwork,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(PlatformFailure value)? platform,
    TResult? Function(CacheFailure value)? cache,
    TResult? Function(AnotherFailure value)? another,
    TResult? Function(LocationFailure value)? location,
    TResult? Function(ParseFailure value)? parse,
    TResult? Function(EmptyFailure value)? empty,
  }) {
    return location?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthorizationFailure value)? authorization,
    TResult Function(NoNetworkFailure value)? noNetwork,
    TResult Function(ServerFailure value)? server,
    TResult Function(PlatformFailure value)? platform,
    TResult Function(CacheFailure value)? cache,
    TResult Function(AnotherFailure value)? another,
    TResult Function(LocationFailure value)? location,
    TResult Function(ParseFailure value)? parse,
    TResult Function(EmptyFailure value)? empty,
    required TResult orElse(),
  }) {
    if (location != null) {
      return location(this);
    }
    return orElse();
  }
}

abstract class LocationFailure extends Failure {
  const factory LocationFailure({final String? message}) = _$LocationFailure;
  const LocationFailure._() : super._();

  String? get message;
  @JsonKey(ignore: true)
  _$$LocationFailureCopyWith<_$LocationFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ParseFailureCopyWith<$Res> {
  factory _$$ParseFailureCopyWith(
          _$ParseFailure value, $Res Function(_$ParseFailure) then) =
      __$$ParseFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ParseFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ParseFailure>
    implements _$$ParseFailureCopyWith<$Res> {
  __$$ParseFailureCopyWithImpl(
      _$ParseFailure _value, $Res Function(_$ParseFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ParseFailure(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ParseFailure extends ParseFailure {
  const _$ParseFailure({this.message}) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.parse(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParseFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParseFailureCopyWith<_$ParseFailure> get copyWith =>
      __$$ParseFailureCopyWithImpl<_$ParseFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? code, String? message) authorization,
    required TResult Function() noNetwork,
    required TResult Function(int? code, String? message) server,
    required TResult Function(String? message) platform,
    required TResult Function(String? message) cache,
    required TResult Function(String? message) another,
    required TResult Function(String? message) location,
    required TResult Function(String? message) parse,
    required TResult Function(String? message) empty,
  }) {
    return parse(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? code, String? message)? authorization,
    TResult? Function()? noNetwork,
    TResult? Function(int? code, String? message)? server,
    TResult? Function(String? message)? platform,
    TResult? Function(String? message)? cache,
    TResult? Function(String? message)? another,
    TResult? Function(String? message)? location,
    TResult? Function(String? message)? parse,
    TResult? Function(String? message)? empty,
  }) {
    return parse?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? code, String? message)? authorization,
    TResult Function()? noNetwork,
    TResult Function(int? code, String? message)? server,
    TResult Function(String? message)? platform,
    TResult Function(String? message)? cache,
    TResult Function(String? message)? another,
    TResult Function(String? message)? location,
    TResult Function(String? message)? parse,
    TResult Function(String? message)? empty,
    required TResult orElse(),
  }) {
    if (parse != null) {
      return parse(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthorizationFailure value) authorization,
    required TResult Function(NoNetworkFailure value) noNetwork,
    required TResult Function(ServerFailure value) server,
    required TResult Function(PlatformFailure value) platform,
    required TResult Function(CacheFailure value) cache,
    required TResult Function(AnotherFailure value) another,
    required TResult Function(LocationFailure value) location,
    required TResult Function(ParseFailure value) parse,
    required TResult Function(EmptyFailure value) empty,
  }) {
    return parse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthorizationFailure value)? authorization,
    TResult? Function(NoNetworkFailure value)? noNetwork,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(PlatformFailure value)? platform,
    TResult? Function(CacheFailure value)? cache,
    TResult? Function(AnotherFailure value)? another,
    TResult? Function(LocationFailure value)? location,
    TResult? Function(ParseFailure value)? parse,
    TResult? Function(EmptyFailure value)? empty,
  }) {
    return parse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthorizationFailure value)? authorization,
    TResult Function(NoNetworkFailure value)? noNetwork,
    TResult Function(ServerFailure value)? server,
    TResult Function(PlatformFailure value)? platform,
    TResult Function(CacheFailure value)? cache,
    TResult Function(AnotherFailure value)? another,
    TResult Function(LocationFailure value)? location,
    TResult Function(ParseFailure value)? parse,
    TResult Function(EmptyFailure value)? empty,
    required TResult orElse(),
  }) {
    if (parse != null) {
      return parse(this);
    }
    return orElse();
  }
}

abstract class ParseFailure extends Failure {
  const factory ParseFailure({final String? message}) = _$ParseFailure;
  const ParseFailure._() : super._();

  String? get message;
  @JsonKey(ignore: true)
  _$$ParseFailureCopyWith<_$ParseFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyFailureCopyWith<$Res> {
  factory _$$EmptyFailureCopyWith(
          _$EmptyFailure value, $Res Function(_$EmptyFailure) then) =
      __$$EmptyFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$EmptyFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$EmptyFailure>
    implements _$$EmptyFailureCopyWith<$Res> {
  __$$EmptyFailureCopyWithImpl(
      _$EmptyFailure _value, $Res Function(_$EmptyFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$EmptyFailure(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$EmptyFailure extends EmptyFailure {
  const _$EmptyFailure({this.message}) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.empty(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmptyFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmptyFailureCopyWith<_$EmptyFailure> get copyWith =>
      __$$EmptyFailureCopyWithImpl<_$EmptyFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? code, String? message) authorization,
    required TResult Function() noNetwork,
    required TResult Function(int? code, String? message) server,
    required TResult Function(String? message) platform,
    required TResult Function(String? message) cache,
    required TResult Function(String? message) another,
    required TResult Function(String? message) location,
    required TResult Function(String? message) parse,
    required TResult Function(String? message) empty,
  }) {
    return empty(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? code, String? message)? authorization,
    TResult? Function()? noNetwork,
    TResult? Function(int? code, String? message)? server,
    TResult? Function(String? message)? platform,
    TResult? Function(String? message)? cache,
    TResult? Function(String? message)? another,
    TResult? Function(String? message)? location,
    TResult? Function(String? message)? parse,
    TResult? Function(String? message)? empty,
  }) {
    return empty?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? code, String? message)? authorization,
    TResult Function()? noNetwork,
    TResult Function(int? code, String? message)? server,
    TResult Function(String? message)? platform,
    TResult Function(String? message)? cache,
    TResult Function(String? message)? another,
    TResult Function(String? message)? location,
    TResult Function(String? message)? parse,
    TResult Function(String? message)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthorizationFailure value) authorization,
    required TResult Function(NoNetworkFailure value) noNetwork,
    required TResult Function(ServerFailure value) server,
    required TResult Function(PlatformFailure value) platform,
    required TResult Function(CacheFailure value) cache,
    required TResult Function(AnotherFailure value) another,
    required TResult Function(LocationFailure value) location,
    required TResult Function(ParseFailure value) parse,
    required TResult Function(EmptyFailure value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthorizationFailure value)? authorization,
    TResult? Function(NoNetworkFailure value)? noNetwork,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(PlatformFailure value)? platform,
    TResult? Function(CacheFailure value)? cache,
    TResult? Function(AnotherFailure value)? another,
    TResult? Function(LocationFailure value)? location,
    TResult? Function(ParseFailure value)? parse,
    TResult? Function(EmptyFailure value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthorizationFailure value)? authorization,
    TResult Function(NoNetworkFailure value)? noNetwork,
    TResult Function(ServerFailure value)? server,
    TResult Function(PlatformFailure value)? platform,
    TResult Function(CacheFailure value)? cache,
    TResult Function(AnotherFailure value)? another,
    TResult Function(LocationFailure value)? location,
    TResult Function(ParseFailure value)? parse,
    TResult Function(EmptyFailure value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class EmptyFailure extends Failure {
  const factory EmptyFailure({final String? message}) = _$EmptyFailure;
  const EmptyFailure._() : super._();

  String? get message;
  @JsonKey(ignore: true)
  _$$EmptyFailureCopyWith<_$EmptyFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
