// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lock_opname_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LockOpnameModel _$$_LockOpnameModelFromJson(Map<String, dynamic> json) =>
    _$_LockOpnameModel(
      code: json['code'] as int?,
      message: json['message'] as String?,
      secretKey: json['key'] as String?,
      vectorKey: json['vector_key'] as String?,
    );

Map<String, dynamic> _$$_LockOpnameModelToJson(_$_LockOpnameModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'key': instance.secretKey,
      'vector_key': instance.vectorKey,
    };
