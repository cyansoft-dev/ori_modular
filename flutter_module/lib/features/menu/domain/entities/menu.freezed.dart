// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'menu.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Menu {
  List<MenuData>? get menuMain => throw _privateConstructorUsedError;
  List<MenuData>? get menuCollection => throw _privateConstructorUsedError;
  List<MenuData>? get menuTenancy => throw _privateConstructorUsedError;
  List<MenuData>? get menuKasOpname => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MenuCopyWith<Menu> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuCopyWith<$Res> {
  factory $MenuCopyWith(Menu value, $Res Function(Menu) then) =
      _$MenuCopyWithImpl<$Res, Menu>;
  @useResult
  $Res call(
      {List<MenuData>? menuMain,
      List<MenuData>? menuCollection,
      List<MenuData>? menuTenancy,
      List<MenuData>? menuKasOpname});
}

/// @nodoc
class _$MenuCopyWithImpl<$Res, $Val extends Menu>
    implements $MenuCopyWith<$Res> {
  _$MenuCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? menuMain = freezed,
    Object? menuCollection = freezed,
    Object? menuTenancy = freezed,
    Object? menuKasOpname = freezed,
  }) {
    return _then(_value.copyWith(
      menuMain: freezed == menuMain
          ? _value.menuMain
          : menuMain // ignore: cast_nullable_to_non_nullable
              as List<MenuData>?,
      menuCollection: freezed == menuCollection
          ? _value.menuCollection
          : menuCollection // ignore: cast_nullable_to_non_nullable
              as List<MenuData>?,
      menuTenancy: freezed == menuTenancy
          ? _value.menuTenancy
          : menuTenancy // ignore: cast_nullable_to_non_nullable
              as List<MenuData>?,
      menuKasOpname: freezed == menuKasOpname
          ? _value.menuKasOpname
          : menuKasOpname // ignore: cast_nullable_to_non_nullable
              as List<MenuData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MenuCopyWith<$Res> implements $MenuCopyWith<$Res> {
  factory _$$_MenuCopyWith(_$_Menu value, $Res Function(_$_Menu) then) =
      __$$_MenuCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<MenuData>? menuMain,
      List<MenuData>? menuCollection,
      List<MenuData>? menuTenancy,
      List<MenuData>? menuKasOpname});
}

/// @nodoc
class __$$_MenuCopyWithImpl<$Res> extends _$MenuCopyWithImpl<$Res, _$_Menu>
    implements _$$_MenuCopyWith<$Res> {
  __$$_MenuCopyWithImpl(_$_Menu _value, $Res Function(_$_Menu) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? menuMain = freezed,
    Object? menuCollection = freezed,
    Object? menuTenancy = freezed,
    Object? menuKasOpname = freezed,
  }) {
    return _then(_$_Menu(
      menuMain: freezed == menuMain
          ? _value._menuMain
          : menuMain // ignore: cast_nullable_to_non_nullable
              as List<MenuData>?,
      menuCollection: freezed == menuCollection
          ? _value._menuCollection
          : menuCollection // ignore: cast_nullable_to_non_nullable
              as List<MenuData>?,
      menuTenancy: freezed == menuTenancy
          ? _value._menuTenancy
          : menuTenancy // ignore: cast_nullable_to_non_nullable
              as List<MenuData>?,
      menuKasOpname: freezed == menuKasOpname
          ? _value._menuKasOpname
          : menuKasOpname // ignore: cast_nullable_to_non_nullable
              as List<MenuData>?,
    ));
  }
}

/// @nodoc

class _$_Menu extends _Menu {
  const _$_Menu(
      {final List<MenuData>? menuMain,
      final List<MenuData>? menuCollection,
      final List<MenuData>? menuTenancy,
      final List<MenuData>? menuKasOpname})
      : _menuMain = menuMain,
        _menuCollection = menuCollection,
        _menuTenancy = menuTenancy,
        _menuKasOpname = menuKasOpname,
        super._();

  final List<MenuData>? _menuMain;
  @override
  List<MenuData>? get menuMain {
    final value = _menuMain;
    if (value == null) return null;
    if (_menuMain is EqualUnmodifiableListView) return _menuMain;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MenuData>? _menuCollection;
  @override
  List<MenuData>? get menuCollection {
    final value = _menuCollection;
    if (value == null) return null;
    if (_menuCollection is EqualUnmodifiableListView) return _menuCollection;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MenuData>? _menuTenancy;
  @override
  List<MenuData>? get menuTenancy {
    final value = _menuTenancy;
    if (value == null) return null;
    if (_menuTenancy is EqualUnmodifiableListView) return _menuTenancy;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MenuData>? _menuKasOpname;
  @override
  List<MenuData>? get menuKasOpname {
    final value = _menuKasOpname;
    if (value == null) return null;
    if (_menuKasOpname is EqualUnmodifiableListView) return _menuKasOpname;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Menu(menuMain: $menuMain, menuCollection: $menuCollection, menuTenancy: $menuTenancy, menuKasOpname: $menuKasOpname)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Menu &&
            const DeepCollectionEquality().equals(other._menuMain, _menuMain) &&
            const DeepCollectionEquality()
                .equals(other._menuCollection, _menuCollection) &&
            const DeepCollectionEquality()
                .equals(other._menuTenancy, _menuTenancy) &&
            const DeepCollectionEquality()
                .equals(other._menuKasOpname, _menuKasOpname));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_menuMain),
      const DeepCollectionEquality().hash(_menuCollection),
      const DeepCollectionEquality().hash(_menuTenancy),
      const DeepCollectionEquality().hash(_menuKasOpname));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MenuCopyWith<_$_Menu> get copyWith =>
      __$$_MenuCopyWithImpl<_$_Menu>(this, _$identity);
}

abstract class _Menu extends Menu {
  const factory _Menu(
      {final List<MenuData>? menuMain,
      final List<MenuData>? menuCollection,
      final List<MenuData>? menuTenancy,
      final List<MenuData>? menuKasOpname}) = _$_Menu;
  const _Menu._() : super._();

  @override
  List<MenuData>? get menuMain;
  @override
  List<MenuData>? get menuCollection;
  @override
  List<MenuData>? get menuTenancy;
  @override
  List<MenuData>? get menuKasOpname;
  @override
  @JsonKey(ignore: true)
  _$$_MenuCopyWith<_$_Menu> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MenuData {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get subtitle => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  bool? get detectPosition => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MenuDataCopyWith<MenuData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuDataCopyWith<$Res> {
  factory $MenuDataCopyWith(MenuData value, $Res Function(MenuData) then) =
      _$MenuDataCopyWithImpl<$Res, MenuData>;
  @useResult
  $Res call(
      {int? id,
      String? title,
      String? subtitle,
      String? path,
      String? icon,
      bool? detectPosition});
}

/// @nodoc
class _$MenuDataCopyWithImpl<$Res, $Val extends MenuData>
    implements $MenuDataCopyWith<$Res> {
  _$MenuDataCopyWithImpl(this._value, this._then);

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
    Object? detectPosition = freezed,
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
      detectPosition: freezed == detectPosition
          ? _value.detectPosition
          : detectPosition // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MenuDataCopyWith<$Res> implements $MenuDataCopyWith<$Res> {
  factory _$$_MenuDataCopyWith(
          _$_MenuData value, $Res Function(_$_MenuData) then) =
      __$$_MenuDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? title,
      String? subtitle,
      String? path,
      String? icon,
      bool? detectPosition});
}

/// @nodoc
class __$$_MenuDataCopyWithImpl<$Res>
    extends _$MenuDataCopyWithImpl<$Res, _$_MenuData>
    implements _$$_MenuDataCopyWith<$Res> {
  __$$_MenuDataCopyWithImpl(
      _$_MenuData _value, $Res Function(_$_MenuData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? path = freezed,
    Object? icon = freezed,
    Object? detectPosition = freezed,
  }) {
    return _then(_$_MenuData(
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
      detectPosition: freezed == detectPosition
          ? _value.detectPosition
          : detectPosition // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_MenuData extends _MenuData {
  const _$_MenuData(
      {this.id,
      this.title,
      this.subtitle,
      this.path,
      this.icon,
      this.detectPosition})
      : super._();

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
  final bool? detectPosition;

  @override
  String toString() {
    return 'MenuData(id: $id, title: $title, subtitle: $subtitle, path: $path, icon: $icon, detectPosition: $detectPosition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MenuData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.detectPosition, detectPosition) ||
                other.detectPosition == detectPosition));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, subtitle, path, icon, detectPosition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MenuDataCopyWith<_$_MenuData> get copyWith =>
      __$$_MenuDataCopyWithImpl<_$_MenuData>(this, _$identity);
}

abstract class _MenuData extends MenuData {
  const factory _MenuData(
      {final int? id,
      final String? title,
      final String? subtitle,
      final String? path,
      final String? icon,
      final bool? detectPosition}) = _$_MenuData;
  const _MenuData._() : super._();

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
  bool? get detectPosition;
  @override
  @JsonKey(ignore: true)
  _$$_MenuDataCopyWith<_$_MenuData> get copyWith =>
      throw _privateConstructorUsedError;
}
