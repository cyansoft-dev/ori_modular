// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'menu_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MenuModel _$MenuModelFromJson(Map<String, dynamic> json) {
  return _MenuModel.fromJson(json);
}

/// @nodoc
mixin _$MenuModel {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'menu_main')
  List<MenuDataModel>? get menuUtama => throw _privateConstructorUsedError;
  @JsonKey(name: 'menu_collection')
  List<MenuDataModel>? get menuCollection => throw _privateConstructorUsedError;
  @JsonKey(name: 'menu_tenant')
  List<MenuDataModel>? get menuTenant => throw _privateConstructorUsedError;
  @JsonKey(name: 'menu_sokas')
  List<MenuDataModel>? get menuKasOpname => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MenuModelCopyWith<MenuModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuModelCopyWith<$Res> {
  factory $MenuModelCopyWith(MenuModel value, $Res Function(MenuModel) then) =
      _$MenuModelCopyWithImpl<$Res, MenuModel>;
  @useResult
  $Res call(
      {int? code,
      String? message,
      @JsonKey(name: 'menu_main') List<MenuDataModel>? menuUtama,
      @JsonKey(name: 'menu_collection') List<MenuDataModel>? menuCollection,
      @JsonKey(name: 'menu_tenant') List<MenuDataModel>? menuTenant,
      @JsonKey(name: 'menu_sokas') List<MenuDataModel>? menuKasOpname});
}

/// @nodoc
class _$MenuModelCopyWithImpl<$Res, $Val extends MenuModel>
    implements $MenuModelCopyWith<$Res> {
  _$MenuModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? menuUtama = freezed,
    Object? menuCollection = freezed,
    Object? menuTenant = freezed,
    Object? menuKasOpname = freezed,
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
      menuUtama: freezed == menuUtama
          ? _value.menuUtama
          : menuUtama // ignore: cast_nullable_to_non_nullable
              as List<MenuDataModel>?,
      menuCollection: freezed == menuCollection
          ? _value.menuCollection
          : menuCollection // ignore: cast_nullable_to_non_nullable
              as List<MenuDataModel>?,
      menuTenant: freezed == menuTenant
          ? _value.menuTenant
          : menuTenant // ignore: cast_nullable_to_non_nullable
              as List<MenuDataModel>?,
      menuKasOpname: freezed == menuKasOpname
          ? _value.menuKasOpname
          : menuKasOpname // ignore: cast_nullable_to_non_nullable
              as List<MenuDataModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MenuModelCopyWith<$Res> implements $MenuModelCopyWith<$Res> {
  factory _$$_MenuModelCopyWith(
          _$_MenuModel value, $Res Function(_$_MenuModel) then) =
      __$$_MenuModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? code,
      String? message,
      @JsonKey(name: 'menu_main') List<MenuDataModel>? menuUtama,
      @JsonKey(name: 'menu_collection') List<MenuDataModel>? menuCollection,
      @JsonKey(name: 'menu_tenant') List<MenuDataModel>? menuTenant,
      @JsonKey(name: 'menu_sokas') List<MenuDataModel>? menuKasOpname});
}

/// @nodoc
class __$$_MenuModelCopyWithImpl<$Res>
    extends _$MenuModelCopyWithImpl<$Res, _$_MenuModel>
    implements _$$_MenuModelCopyWith<$Res> {
  __$$_MenuModelCopyWithImpl(
      _$_MenuModel _value, $Res Function(_$_MenuModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? menuUtama = freezed,
    Object? menuCollection = freezed,
    Object? menuTenant = freezed,
    Object? menuKasOpname = freezed,
  }) {
    return _then(_$_MenuModel(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      menuUtama: freezed == menuUtama
          ? _value._menuUtama
          : menuUtama // ignore: cast_nullable_to_non_nullable
              as List<MenuDataModel>?,
      menuCollection: freezed == menuCollection
          ? _value._menuCollection
          : menuCollection // ignore: cast_nullable_to_non_nullable
              as List<MenuDataModel>?,
      menuTenant: freezed == menuTenant
          ? _value._menuTenant
          : menuTenant // ignore: cast_nullable_to_non_nullable
              as List<MenuDataModel>?,
      menuKasOpname: freezed == menuKasOpname
          ? _value._menuKasOpname
          : menuKasOpname // ignore: cast_nullable_to_non_nullable
              as List<MenuDataModel>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_MenuModel implements _MenuModel {
  const _$_MenuModel(
      {this.code,
      this.message,
      @JsonKey(name: 'menu_main')
          final List<MenuDataModel>? menuUtama,
      @JsonKey(name: 'menu_collection')
          final List<MenuDataModel>? menuCollection,
      @JsonKey(name: 'menu_tenant')
          final List<MenuDataModel>? menuTenant,
      @JsonKey(name: 'menu_sokas')
          final List<MenuDataModel>? menuKasOpname})
      : _menuUtama = menuUtama,
        _menuCollection = menuCollection,
        _menuTenant = menuTenant,
        _menuKasOpname = menuKasOpname;

  factory _$_MenuModel.fromJson(Map<String, dynamic> json) =>
      _$$_MenuModelFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  final List<MenuDataModel>? _menuUtama;
  @override
  @JsonKey(name: 'menu_main')
  List<MenuDataModel>? get menuUtama {
    final value = _menuUtama;
    if (value == null) return null;
    if (_menuUtama is EqualUnmodifiableListView) return _menuUtama;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MenuDataModel>? _menuCollection;
  @override
  @JsonKey(name: 'menu_collection')
  List<MenuDataModel>? get menuCollection {
    final value = _menuCollection;
    if (value == null) return null;
    if (_menuCollection is EqualUnmodifiableListView) return _menuCollection;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MenuDataModel>? _menuTenant;
  @override
  @JsonKey(name: 'menu_tenant')
  List<MenuDataModel>? get menuTenant {
    final value = _menuTenant;
    if (value == null) return null;
    if (_menuTenant is EqualUnmodifiableListView) return _menuTenant;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MenuDataModel>? _menuKasOpname;
  @override
  @JsonKey(name: 'menu_sokas')
  List<MenuDataModel>? get menuKasOpname {
    final value = _menuKasOpname;
    if (value == null) return null;
    if (_menuKasOpname is EqualUnmodifiableListView) return _menuKasOpname;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MenuModel(code: $code, message: $message, menuUtama: $menuUtama, menuCollection: $menuCollection, menuTenant: $menuTenant, menuKasOpname: $menuKasOpname)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MenuModel &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._menuUtama, _menuUtama) &&
            const DeepCollectionEquality()
                .equals(other._menuCollection, _menuCollection) &&
            const DeepCollectionEquality()
                .equals(other._menuTenant, _menuTenant) &&
            const DeepCollectionEquality()
                .equals(other._menuKasOpname, _menuKasOpname));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      code,
      message,
      const DeepCollectionEquality().hash(_menuUtama),
      const DeepCollectionEquality().hash(_menuCollection),
      const DeepCollectionEquality().hash(_menuTenant),
      const DeepCollectionEquality().hash(_menuKasOpname));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MenuModelCopyWith<_$_MenuModel> get copyWith =>
      __$$_MenuModelCopyWithImpl<_$_MenuModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MenuModelToJson(
      this,
    );
  }
}

abstract class _MenuModel implements MenuModel {
  const factory _MenuModel(
      {final int? code,
      final String? message,
      @JsonKey(name: 'menu_main')
          final List<MenuDataModel>? menuUtama,
      @JsonKey(name: 'menu_collection')
          final List<MenuDataModel>? menuCollection,
      @JsonKey(name: 'menu_tenant')
          final List<MenuDataModel>? menuTenant,
      @JsonKey(name: 'menu_sokas')
          final List<MenuDataModel>? menuKasOpname}) = _$_MenuModel;

  factory _MenuModel.fromJson(Map<String, dynamic> json) =
      _$_MenuModel.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  @JsonKey(name: 'menu_main')
  List<MenuDataModel>? get menuUtama;
  @override
  @JsonKey(name: 'menu_collection')
  List<MenuDataModel>? get menuCollection;
  @override
  @JsonKey(name: 'menu_tenant')
  List<MenuDataModel>? get menuTenant;
  @override
  @JsonKey(name: 'menu_sokas')
  List<MenuDataModel>? get menuKasOpname;
  @override
  @JsonKey(ignore: true)
  _$$_MenuModelCopyWith<_$_MenuModel> get copyWith =>
      throw _privateConstructorUsedError;
}

MenuDataModel _$MenuDataModelFromJson(Map<String, dynamic> json) {
  return _MenuDataModel.fromJson(json);
}

/// @nodoc
mixin _$MenuDataModel {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get subtitle => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  @JsonKey(name: 'detect_location')
  String? get lockLocation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MenuDataModelCopyWith<MenuDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuDataModelCopyWith<$Res> {
  factory $MenuDataModelCopyWith(
          MenuDataModel value, $Res Function(MenuDataModel) then) =
      _$MenuDataModelCopyWithImpl<$Res, MenuDataModel>;
  @useResult
  $Res call(
      {int? id,
      String? title,
      String? subtitle,
      String? path,
      String? icon,
      @JsonKey(name: 'detect_location') String? lockLocation});
}

/// @nodoc
class _$MenuDataModelCopyWithImpl<$Res, $Val extends MenuDataModel>
    implements $MenuDataModelCopyWith<$Res> {
  _$MenuDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? path = freezed,
    Object? icon = freezed,
    Object? lockLocation = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitle: freezed == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      lockLocation: freezed == lockLocation
          ? _value.lockLocation
          : lockLocation // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MenuDataModelCopyWith<$Res>
    implements $MenuDataModelCopyWith<$Res> {
  factory _$$_MenuDataModelCopyWith(
          _$_MenuDataModel value, $Res Function(_$_MenuDataModel) then) =
      __$$_MenuDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? title,
      String? subtitle,
      String? path,
      String? icon,
      @JsonKey(name: 'detect_location') String? lockLocation});
}

/// @nodoc
class __$$_MenuDataModelCopyWithImpl<$Res>
    extends _$MenuDataModelCopyWithImpl<$Res, _$_MenuDataModel>
    implements _$$_MenuDataModelCopyWith<$Res> {
  __$$_MenuDataModelCopyWithImpl(
      _$_MenuDataModel _value, $Res Function(_$_MenuDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? path = freezed,
    Object? icon = freezed,
    Object? lockLocation = freezed,
  }) {
    return _then(_$_MenuDataModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitle: freezed == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      lockLocation: freezed == lockLocation
          ? _value.lockLocation
          : lockLocation // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_MenuDataModel implements _MenuDataModel {
  const _$_MenuDataModel(
      {this.id,
      this.title,
      this.subtitle,
      this.path,
      this.icon,
      @JsonKey(name: 'detect_location') this.lockLocation});

  factory _$_MenuDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_MenuDataModelFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? subtitle;
  @override
  final String? path;
  @override
  final String? icon;
  @override
  @JsonKey(name: 'detect_location')
  final String? lockLocation;

  @override
  String toString() {
    return 'MenuDataModel(id: $id, title: $title, subtitle: $subtitle, path: $path, icon: $icon, lockLocation: $lockLocation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MenuDataModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.lockLocation, lockLocation) ||
                other.lockLocation == lockLocation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, subtitle, path, icon, lockLocation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MenuDataModelCopyWith<_$_MenuDataModel> get copyWith =>
      __$$_MenuDataModelCopyWithImpl<_$_MenuDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MenuDataModelToJson(
      this,
    );
  }
}

abstract class _MenuDataModel implements MenuDataModel {
  const factory _MenuDataModel(
          {final int? id,
          final String? title,
          final String? subtitle,
          final String? path,
          final String? icon,
          @JsonKey(name: 'detect_location') final String? lockLocation}) =
      _$_MenuDataModel;

  factory _MenuDataModel.fromJson(Map<String, dynamic> json) =
      _$_MenuDataModel.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  String? get subtitle;
  @override
  String? get path;
  @override
  String? get icon;
  @override
  @JsonKey(name: 'detect_location')
  String? get lockLocation;
  @override
  @JsonKey(ignore: true)
  _$$_MenuDataModelCopyWith<_$_MenuDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
