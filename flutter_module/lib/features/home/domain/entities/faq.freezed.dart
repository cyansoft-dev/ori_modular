// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'faq.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FaqData {
  String? get question => throw _privateConstructorUsedError;
  String? get answer => throw _privateConstructorUsedError;
  bool get isExpanded => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FaqDataCopyWith<FaqData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaqDataCopyWith<$Res> {
  factory $FaqDataCopyWith(FaqData value, $Res Function(FaqData) then) =
      _$FaqDataCopyWithImpl<$Res, FaqData>;
  @useResult
  $Res call({String? question, String? answer, bool isExpanded});
}

/// @nodoc
class _$FaqDataCopyWithImpl<$Res, $Val extends FaqData>
    implements $FaqDataCopyWith<$Res> {
  _$FaqDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = freezed,
    Object? answer = freezed,
    Object? isExpanded = null,
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
      isExpanded: null == isExpanded
          ? _value.isExpanded
          : isExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FaqDataCopyWith<$Res> implements $FaqDataCopyWith<$Res> {
  factory _$$_FaqDataCopyWith(
          _$_FaqData value, $Res Function(_$_FaqData) then) =
      __$$_FaqDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? question, String? answer, bool isExpanded});
}

/// @nodoc
class __$$_FaqDataCopyWithImpl<$Res>
    extends _$FaqDataCopyWithImpl<$Res, _$_FaqData>
    implements _$$_FaqDataCopyWith<$Res> {
  __$$_FaqDataCopyWithImpl(_$_FaqData _value, $Res Function(_$_FaqData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = freezed,
    Object? answer = freezed,
    Object? isExpanded = null,
  }) {
    return _then(_$_FaqData(
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
      isExpanded: null == isExpanded
          ? _value.isExpanded
          : isExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_FaqData extends _FaqData {
  const _$_FaqData({this.question, this.answer, this.isExpanded = false})
      : super._();

  @override
  final String? question;
  @override
  final String? answer;
  @override
  @JsonKey()
  final bool isExpanded;

  @override
  String toString() {
    return 'FaqData(question: $question, answer: $answer, isExpanded: $isExpanded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FaqData &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.isExpanded, isExpanded) ||
                other.isExpanded == isExpanded));
  }

  @override
  int get hashCode => Object.hash(runtimeType, question, answer, isExpanded);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FaqDataCopyWith<_$_FaqData> get copyWith =>
      __$$_FaqDataCopyWithImpl<_$_FaqData>(this, _$identity);
}

abstract class _FaqData extends FaqData {
  const factory _FaqData(
      {final String? question,
      final String? answer,
      final bool isExpanded}) = _$_FaqData;
  const _FaqData._() : super._();

  @override
  String? get question;
  @override
  String? get answer;
  @override
  bool get isExpanded;
  @override
  @JsonKey(ignore: true)
  _$$_FaqDataCopyWith<_$_FaqData> get copyWith =>
      throw _privateConstructorUsedError;
}
