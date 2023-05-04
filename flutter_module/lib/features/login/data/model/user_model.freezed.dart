// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'result')
  UserDataModel? get userData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {int? code,
      String? message,
      @JsonKey(name: 'result') UserDataModel? userData});

  $UserDataModelCopyWith<$Res>? get userData;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? userData = freezed,
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
      userData: freezed == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as UserDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDataModelCopyWith<$Res>? get userData {
    if (_value.userData == null) {
      return null;
    }

    return $UserDataModelCopyWith<$Res>(_value.userData!, (value) {
      return _then(_value.copyWith(userData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$$_UserModelCopyWith(
          _$_UserModel value, $Res Function(_$_UserModel) then) =
      __$$_UserModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? code,
      String? message,
      @JsonKey(name: 'result') UserDataModel? userData});

  @override
  $UserDataModelCopyWith<$Res>? get userData;
}

/// @nodoc
class __$$_UserModelCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$_UserModel>
    implements _$$_UserModelCopyWith<$Res> {
  __$$_UserModelCopyWithImpl(
      _$_UserModel _value, $Res Function(_$_UserModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? userData = freezed,
  }) {
    return _then(_$_UserModel(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      userData: freezed == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as UserDataModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_UserModel implements _UserModel {
  const _$_UserModel(
      {this.code, this.message, @JsonKey(name: 'result') this.userData});

  factory _$_UserModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserModelFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  @JsonKey(name: 'result')
  final UserDataModel? userData;

  @override
  String toString() {
    return 'UserModel(code: $code, message: $message, userData: $userData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserModel &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.userData, userData) ||
                other.userData == userData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, userData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      __$$_UserModelCopyWithImpl<_$_UserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserModelToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {final int? code,
      final String? message,
      @JsonKey(name: 'result') final UserDataModel? userData}) = _$_UserModel;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$_UserModel.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  @JsonKey(name: 'result')
  UserDataModel? get userData;
  @override
  @JsonKey(ignore: true)
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

UserDataModel _$UserDataModelFromJson(Map<String, dynamic> json) {
  return _UserDataModel.fromJson(json);
}

/// @nodoc
mixin _$UserDataModel {
  String? get username => throw _privateConstructorUsedError;
  String? get namalengkap => throw _privateConstructorUsedError;
  String? get kodecabang => throw _privateConstructorUsedError;
  String? get namacabang => throw _privateConstructorUsedError;
  String? get jabatan => throw _privateConstructorUsedError;
  String? get departement => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_store')
  bool? get isStore => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;
  String? get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDataModelCopyWith<UserDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataModelCopyWith<$Res> {
  factory $UserDataModelCopyWith(
          UserDataModel value, $Res Function(UserDataModel) then) =
      _$UserDataModelCopyWithImpl<$Res, UserDataModel>;
  @useResult
  $Res call(
      {String? username,
      String? namalengkap,
      String? kodecabang,
      String? namacabang,
      String? jabatan,
      String? departement,
      @JsonKey(name: 'is_store') bool? isStore,
      String? token,
      String? refreshToken});
}

/// @nodoc
class _$UserDataModelCopyWithImpl<$Res, $Val extends UserDataModel>
    implements $UserDataModelCopyWith<$Res> {
  _$UserDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? namalengkap = freezed,
    Object? kodecabang = freezed,
    Object? namacabang = freezed,
    Object? jabatan = freezed,
    Object? departement = freezed,
    Object? isStore = freezed,
    Object? token = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_value.copyWith(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      namalengkap: freezed == namalengkap
          ? _value.namalengkap
          : namalengkap // ignore: cast_nullable_to_non_nullable
              as String?,
      kodecabang: freezed == kodecabang
          ? _value.kodecabang
          : kodecabang // ignore: cast_nullable_to_non_nullable
              as String?,
      namacabang: freezed == namacabang
          ? _value.namacabang
          : namacabang // ignore: cast_nullable_to_non_nullable
              as String?,
      jabatan: freezed == jabatan
          ? _value.jabatan
          : jabatan // ignore: cast_nullable_to_non_nullable
              as String?,
      departement: freezed == departement
          ? _value.departement
          : departement // ignore: cast_nullable_to_non_nullable
              as String?,
      isStore: freezed == isStore
          ? _value.isStore
          : isStore // ignore: cast_nullable_to_non_nullable
              as bool?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserDataModelCopyWith<$Res>
    implements $UserDataModelCopyWith<$Res> {
  factory _$$_UserDataModelCopyWith(
          _$_UserDataModel value, $Res Function(_$_UserDataModel) then) =
      __$$_UserDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? username,
      String? namalengkap,
      String? kodecabang,
      String? namacabang,
      String? jabatan,
      String? departement,
      @JsonKey(name: 'is_store') bool? isStore,
      String? token,
      String? refreshToken});
}

/// @nodoc
class __$$_UserDataModelCopyWithImpl<$Res>
    extends _$UserDataModelCopyWithImpl<$Res, _$_UserDataModel>
    implements _$$_UserDataModelCopyWith<$Res> {
  __$$_UserDataModelCopyWithImpl(
      _$_UserDataModel _value, $Res Function(_$_UserDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? namalengkap = freezed,
    Object? kodecabang = freezed,
    Object? namacabang = freezed,
    Object? jabatan = freezed,
    Object? departement = freezed,
    Object? isStore = freezed,
    Object? token = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_$_UserDataModel(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      namalengkap: freezed == namalengkap
          ? _value.namalengkap
          : namalengkap // ignore: cast_nullable_to_non_nullable
              as String?,
      kodecabang: freezed == kodecabang
          ? _value.kodecabang
          : kodecabang // ignore: cast_nullable_to_non_nullable
              as String?,
      namacabang: freezed == namacabang
          ? _value.namacabang
          : namacabang // ignore: cast_nullable_to_non_nullable
              as String?,
      jabatan: freezed == jabatan
          ? _value.jabatan
          : jabatan // ignore: cast_nullable_to_non_nullable
              as String?,
      departement: freezed == departement
          ? _value.departement
          : departement // ignore: cast_nullable_to_non_nullable
              as String?,
      isStore: freezed == isStore
          ? _value.isStore
          : isStore // ignore: cast_nullable_to_non_nullable
              as bool?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_UserDataModel implements _UserDataModel {
  const _$_UserDataModel(
      {this.username,
      this.namalengkap,
      this.kodecabang,
      this.namacabang,
      this.jabatan,
      this.departement,
      @JsonKey(name: 'is_store') this.isStore,
      this.token,
      this.refreshToken});

  factory _$_UserDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserDataModelFromJson(json);

  @override
  final String? username;
  @override
  final String? namalengkap;
  @override
  final String? kodecabang;
  @override
  final String? namacabang;
  @override
  final String? jabatan;
  @override
  final String? departement;
  @override
  @JsonKey(name: 'is_store')
  final bool? isStore;
  @override
  final String? token;
  @override
  final String? refreshToken;

  @override
  String toString() {
    return 'UserDataModel(username: $username, namalengkap: $namalengkap, kodecabang: $kodecabang, namacabang: $namacabang, jabatan: $jabatan, departement: $departement, isStore: $isStore, token: $token, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserDataModel &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.namalengkap, namalengkap) ||
                other.namalengkap == namalengkap) &&
            (identical(other.kodecabang, kodecabang) ||
                other.kodecabang == kodecabang) &&
            (identical(other.namacabang, namacabang) ||
                other.namacabang == namacabang) &&
            (identical(other.jabatan, jabatan) || other.jabatan == jabatan) &&
            (identical(other.departement, departement) ||
                other.departement == departement) &&
            (identical(other.isStore, isStore) || other.isStore == isStore) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      username,
      namalengkap,
      kodecabang,
      namacabang,
      jabatan,
      departement,
      isStore,
      token,
      refreshToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserDataModelCopyWith<_$_UserDataModel> get copyWith =>
      __$$_UserDataModelCopyWithImpl<_$_UserDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDataModelToJson(
      this,
    );
  }
}

abstract class _UserDataModel implements UserDataModel {
  const factory _UserDataModel(
      {final String? username,
      final String? namalengkap,
      final String? kodecabang,
      final String? namacabang,
      final String? jabatan,
      final String? departement,
      @JsonKey(name: 'is_store') final bool? isStore,
      final String? token,
      final String? refreshToken}) = _$_UserDataModel;

  factory _UserDataModel.fromJson(Map<String, dynamic> json) =
      _$_UserDataModel.fromJson;

  @override
  String? get username;
  @override
  String? get namalengkap;
  @override
  String? get kodecabang;
  @override
  String? get namacabang;
  @override
  String? get jabatan;
  @override
  String? get departement;
  @override
  @JsonKey(name: 'is_store')
  bool? get isStore;
  @override
  String? get token;
  @override
  String? get refreshToken;
  @override
  @JsonKey(ignore: true)
  _$$_UserDataModelCopyWith<_$_UserDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
