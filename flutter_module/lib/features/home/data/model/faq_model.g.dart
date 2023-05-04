// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'faq_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FaqModel _$$_FaqModelFromJson(Map<String, dynamic> json) => _$_FaqModel(
      code: json['code'] as int?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => FaqDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_FaqModelToJson(_$_FaqModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

_$_FaqDataModel _$$_FaqDataModelFromJson(Map<String, dynamic> json) =>
    _$_FaqDataModel(
      question: json['question'] as String?,
      answer: json['answer'] as String?,
    );

Map<String, dynamic> _$$_FaqDataModelToJson(_$_FaqDataModel instance) =>
    <String, dynamic>{
      'question': instance.question,
      'answer': instance.answer,
    };
