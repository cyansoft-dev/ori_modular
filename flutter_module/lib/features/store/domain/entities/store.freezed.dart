// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ListStore {
  List<Store>? get stores => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListStoreCopyWith<ListStore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListStoreCopyWith<$Res> {
  factory $ListStoreCopyWith(ListStore value, $Res Function(ListStore) then) =
      _$ListStoreCopyWithImpl<$Res, ListStore>;
  @useResult
  $Res call({List<Store>? stores});
}

/// @nodoc
class _$ListStoreCopyWithImpl<$Res, $Val extends ListStore>
    implements $ListStoreCopyWith<$Res> {
  _$ListStoreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stores = freezed,
  }) {
    return _then(_value.copyWith(
      stores: freezed == stores
          ? _value.stores
          : stores // ignore: cast_nullable_to_non_nullable
              as List<Store>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ListStoreCopyWith<$Res> implements $ListStoreCopyWith<$Res> {
  factory _$$_ListStoreCopyWith(
          _$_ListStore value, $Res Function(_$_ListStore) then) =
      __$$_ListStoreCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Store>? stores});
}

/// @nodoc
class __$$_ListStoreCopyWithImpl<$Res>
    extends _$ListStoreCopyWithImpl<$Res, _$_ListStore>
    implements _$$_ListStoreCopyWith<$Res> {
  __$$_ListStoreCopyWithImpl(
      _$_ListStore _value, $Res Function(_$_ListStore) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stores = freezed,
  }) {
    return _then(_$_ListStore(
      stores: freezed == stores
          ? _value._stores
          : stores // ignore: cast_nullable_to_non_nullable
              as List<Store>?,
    ));
  }
}

/// @nodoc

class _$_ListStore extends _ListStore with DiagnosticableTreeMixin {
  const _$_ListStore({final List<Store>? stores})
      : _stores = stores,
        super._();

  final List<Store>? _stores;
  @override
  List<Store>? get stores {
    final value = _stores;
    if (value == null) return null;
    if (_stores is EqualUnmodifiableListView) return _stores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ListStore(stores: $stores)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ListStore'))
      ..add(DiagnosticsProperty('stores', stores));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListStore &&
            const DeepCollectionEquality().equals(other._stores, _stores));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_stores));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListStoreCopyWith<_$_ListStore> get copyWith =>
      __$$_ListStoreCopyWithImpl<_$_ListStore>(this, _$identity);
}

abstract class _ListStore extends ListStore {
  const factory _ListStore({final List<Store>? stores}) = _$_ListStore;
  const _ListStore._() : super._();

  @override
  List<Store>? get stores;
  @override
  @JsonKey(ignore: true)
  _$$_ListStoreCopyWith<_$_ListStore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Store {
  String? get username => throw _privateConstructorUsedError;
  String? get namalengkap => throw _privateConstructorUsedError;
  String? get kodetoko => throw _privateConstructorUsedError;
  String? get namatoko => throw _privateConstructorUsedError;
  String? get groupname => throw _privateConstructorUsedError;
  String? get kodecabang => throw _privateConstructorUsedError;
  String? get namacabang => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StoreCopyWith<Store> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreCopyWith<$Res> {
  factory $StoreCopyWith(Store value, $Res Function(Store) then) =
      _$StoreCopyWithImpl<$Res, Store>;
  @useResult
  $Res call(
      {String? username,
      String? namalengkap,
      String? kodetoko,
      String? namatoko,
      String? groupname,
      String? kodecabang,
      String? namacabang,
      double? longitude,
      double? latitude});
}

/// @nodoc
class _$StoreCopyWithImpl<$Res, $Val extends Store>
    implements $StoreCopyWith<$Res> {
  _$StoreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? namalengkap = freezed,
    Object? kodetoko = freezed,
    Object? namatoko = freezed,
    Object? groupname = freezed,
    Object? kodecabang = freezed,
    Object? namacabang = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
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
      kodetoko: freezed == kodetoko
          ? _value.kodetoko
          : kodetoko // ignore: cast_nullable_to_non_nullable
              as String?,
      namatoko: freezed == namatoko
          ? _value.namatoko
          : namatoko // ignore: cast_nullable_to_non_nullable
              as String?,
      groupname: freezed == groupname
          ? _value.groupname
          : groupname // ignore: cast_nullable_to_non_nullable
              as String?,
      kodecabang: freezed == kodecabang
          ? _value.kodecabang
          : kodecabang // ignore: cast_nullable_to_non_nullable
              as String?,
      namacabang: freezed == namacabang
          ? _value.namacabang
          : namacabang // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StoreCopyWith<$Res> implements $StoreCopyWith<$Res> {
  factory _$$_StoreCopyWith(_$_Store value, $Res Function(_$_Store) then) =
      __$$_StoreCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? username,
      String? namalengkap,
      String? kodetoko,
      String? namatoko,
      String? groupname,
      String? kodecabang,
      String? namacabang,
      double? longitude,
      double? latitude});
}

/// @nodoc
class __$$_StoreCopyWithImpl<$Res> extends _$StoreCopyWithImpl<$Res, _$_Store>
    implements _$$_StoreCopyWith<$Res> {
  __$$_StoreCopyWithImpl(_$_Store _value, $Res Function(_$_Store) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? namalengkap = freezed,
    Object? kodetoko = freezed,
    Object? namatoko = freezed,
    Object? groupname = freezed,
    Object? kodecabang = freezed,
    Object? namacabang = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
  }) {
    return _then(_$_Store(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      namalengkap: freezed == namalengkap
          ? _value.namalengkap
          : namalengkap // ignore: cast_nullable_to_non_nullable
              as String?,
      kodetoko: freezed == kodetoko
          ? _value.kodetoko
          : kodetoko // ignore: cast_nullable_to_non_nullable
              as String?,
      namatoko: freezed == namatoko
          ? _value.namatoko
          : namatoko // ignore: cast_nullable_to_non_nullable
              as String?,
      groupname: freezed == groupname
          ? _value.groupname
          : groupname // ignore: cast_nullable_to_non_nullable
              as String?,
      kodecabang: freezed == kodecabang
          ? _value.kodecabang
          : kodecabang // ignore: cast_nullable_to_non_nullable
              as String?,
      namacabang: freezed == namacabang
          ? _value.namacabang
          : namacabang // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$_Store extends _Store with DiagnosticableTreeMixin {
  const _$_Store(
      {this.username,
      this.namalengkap,
      this.kodetoko,
      this.namatoko,
      this.groupname,
      this.kodecabang,
      this.namacabang,
      this.longitude,
      this.latitude})
      : super._();

  @override
  final String? username;
  @override
  final String? namalengkap;
  @override
  final String? kodetoko;
  @override
  final String? namatoko;
  @override
  final String? groupname;
  @override
  final String? kodecabang;
  @override
  final String? namacabang;
  @override
  final double? longitude;
  @override
  final double? latitude;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Store(username: $username, namalengkap: $namalengkap, kodetoko: $kodetoko, namatoko: $namatoko, groupname: $groupname, kodecabang: $kodecabang, namacabang: $namacabang, longitude: $longitude, latitude: $latitude)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Store'))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('namalengkap', namalengkap))
      ..add(DiagnosticsProperty('kodetoko', kodetoko))
      ..add(DiagnosticsProperty('namatoko', namatoko))
      ..add(DiagnosticsProperty('groupname', groupname))
      ..add(DiagnosticsProperty('kodecabang', kodecabang))
      ..add(DiagnosticsProperty('namacabang', namacabang))
      ..add(DiagnosticsProperty('longitude', longitude))
      ..add(DiagnosticsProperty('latitude', latitude));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Store &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.namalengkap, namalengkap) ||
                other.namalengkap == namalengkap) &&
            (identical(other.kodetoko, kodetoko) ||
                other.kodetoko == kodetoko) &&
            (identical(other.namatoko, namatoko) ||
                other.namatoko == namatoko) &&
            (identical(other.groupname, groupname) ||
                other.groupname == groupname) &&
            (identical(other.kodecabang, kodecabang) ||
                other.kodecabang == kodecabang) &&
            (identical(other.namacabang, namacabang) ||
                other.namacabang == namacabang) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, namalengkap, kodetoko,
      namatoko, groupname, kodecabang, namacabang, longitude, latitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StoreCopyWith<_$_Store> get copyWith =>
      __$$_StoreCopyWithImpl<_$_Store>(this, _$identity);
}

abstract class _Store extends Store {
  const factory _Store(
      {final String? username,
      final String? namalengkap,
      final String? kodetoko,
      final String? namatoko,
      final String? groupname,
      final String? kodecabang,
      final String? namacabang,
      final double? longitude,
      final double? latitude}) = _$_Store;
  const _Store._() : super._();

  @override
  String? get username;
  @override
  String? get namalengkap;
  @override
  String? get kodetoko;
  @override
  String? get namatoko;
  @override
  String? get groupname;
  @override
  String? get kodecabang;
  @override
  String? get namacabang;
  @override
  double? get longitude;
  @override
  double? get latitude;
  @override
  @JsonKey(ignore: true)
  _$$_StoreCopyWith<_$_Store> get copyWith =>
      throw _privateConstructorUsedError;
}
