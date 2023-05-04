// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'faq_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FaqModel _$FaqModelFromJson(Map<String, dynamic> json) {
  return _FaqModel.fromJson(json);
}

/// @nodoc
mixin _$FaqModel {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<FaqDataModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FaqModelCopyWith<FaqModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaqModelCopyWith<$Res> {
  factory $FaqModelCopyWith(FaqModel value, $Res Function(FaqModel) then) =
      _$FaqModelCopyWithImpl<$Res, FaqModel>;
  @useResult
  $Res call({int? code, String? message, List<FaqDataModel>? data});
}

/// @nodoc
class _$FaqModelCopyWithImpl<$Res, $Val extends FaqModel>
    implements $FaqModelCopyWith<$Res> {
  _$FaqModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
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
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<FaqDataModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FaqModelCopyWith<$Res> implements $FaqModelCopyWith<$Res> {
  factory _$$_FaqModelCopyWith(
          _$_FaqModel value, $Res Function(_$_FaqModel) then) =
      __$$_FaqModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, List<FaqDataModel>? data});
}

/// @nodoc
class __$$_FaqModelCopyWithImpl<$Res>
    extends _$FaqModelCopyWithImpl<$Res, _$_FaqModel>
    implements _$$_FaqModelCopyWith<$Res> {
  __$$_FaqModelCopyWithImpl(
      _$_FaqModel _value, $Res Function(_$_FaqModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_FaqModel(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<FaqDataModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FaqModel implements _FaqModel {
  const _$_FaqModel({this.code, this.message, final List<FaqDataModel>? data})
      : _data = data;

  factory _$_FaqModel.fromJson(Map<String, dynamic> json) =>
      _$$_FaqModelFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  final List<FaqDataModel>? _data;
  @override
  List<FaqDataModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FaqModel(code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FaqModel &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, code, message, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FaqModelCopyWith<_$_FaqModel> get copyWith =>
      __$$_FaqModelCopyWithImpl<_$_FaqModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FaqModelToJson(
      this,
    );
  }
}

abstract class _FaqModel implements FaqModel {
  const factory _FaqModel(
      {final int? code,
      final String? message,
      final List<FaqDataModel>? data}) = _$_FaqModel;

  factory _FaqModel.fromJson(Map<String, dynamic> json) = _$_FaqModel.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  List<FaqDataModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_FaqModelCopyWith<_$_FaqModel> get copyWith =>
      throw _privateConstructorUsedError;
}

FaqDataModel _$FaqDataModelFromJson(Map<String, dynamic> json) {
  return _FaqDataModel.fromJson(json);
}

/// @nodoc
mixin _$FaqDataModel {
  String? get question => throw _privateConstructorUsedError;
  String? get answer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FaqDataModelCopyWith<FaqDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaqDataModelCopyWith<$Res> {
  factory $FaqDataModelCopyWith(
          FaqDataModel value, $Res Function(FaqDataModel) then) =
      _$FaqDataModelCopyWithImpl<$Res, FaqDataModel>;
  @useResult
  $Res call({String? question, String? answer});
}

/// @nodoc
class _$FaqDataModelCopyWithImpl<$Res, $Val extends FaqDataModel>
    implements $FaqDataModelCopyWith<$Res> {
  _$FaqDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = freezed,
    Object? answer = freezed,
  }) {
    return _then(_value.copyWith(
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FaqDataModelCopyWith<$Res>
    implements $FaqDataModelCopyWith<$Res> {
  factory _$$_FaqDataModelCopyWith(
          _$_FaqDataModel value, $Res Function(_$_FaqDataModel) then) =
      __$$_FaqDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? question, String? answer});
}

/// @nodoc
class __$$_FaqDataModelCopyWithImpl<$Res>
    extends _$FaqDataModelCopyWithImpl<$Res, _$_FaqDataModel>
    implements _$$_FaqDataModelCopyWith<$Res> {
  __$$_FaqDataModelCopyWithImpl(
      _$_FaqDataModel _value, $Res Function(_$_FaqDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = freezed,
    Object? answer = freezed,
  }) {
    return _then(_$_FaqDataModel(
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FaqDataModel implements _FaqDataModel {
  const _$_FaqDataModel({this.question, this.answer});

  factory _$_FaqDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_FaqDataModelFromJson(json);

  @override
  final String? question;
  @override
  final String? answer;

  @override
  String toString() {
    return 'FaqDataModel(question: $question, answer: $answer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FaqDataModel &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, question, answer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FaqDataModelCopyWith<_$_FaqDataModel> get copyWith =>
      __$$_FaqDataModelCopyWithImpl<_$_FaqDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FaqDataModelToJson(
      this,
    );
  }
}

abstract class _FaqDataModel implements FaqDataModel {
  const factory _FaqDataModel({final String? question, final String? answer}) =
      _$_FaqDataModel;

  factory _FaqDataModel.fromJson(Map<String, dynamic> json) =
      _$_FaqDataModel.fromJson;

  @override
  String? get question;
  @override
  String? get answer;
  @override
  @JsonKey(ignore: true)
  _$$_FaqDataModelCopyWith<_$_FaqDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
