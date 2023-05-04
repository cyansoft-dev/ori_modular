// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      code: json['code'] as int?,
      message: json['message'] as String?,
      userData: json['result'] == null
          ? null
          : UserDataModel.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'result': instance.userData?.toJson(),
    };

_$_UserDataModel _$$_UserDataModelFromJson(Map<String, dynamic> json) =>
    _$_UserDataModel(
      username: json['username'] as String?,
      namalengkap: json['namalengkap'] as String?,
      kodecabang: json['kodecabang'] as String?,
      namacabang: json['namacabang'] as String?,
      jabatan: json['jabatan'] as String?,
      departement: json['departement'] as String?,
      isStore: json['is_store'] as bool?,
      token: json['token'] as String?,
      refreshToken: json['refreshToken'] as String?,
    );

Map<String, dynamic> _$$_UserDataModelToJson(_$_UserDataModel instance) =>
    <String, dynamic>{
      'username': instance.username,
      'namalengkap': instance.namalengkap,
      'kodecabang': instance.kodecabang,
      'namacabang': instance.namacabang,
      'jabatan': instance.jabatan,
      'departement': instance.departement,
      'is_store': instance.isStore,
      'token': instance.token,
      'refreshToken': instance.refreshToken,
    };
