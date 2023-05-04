// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MenuModel _$$_MenuModelFromJson(Map<String, dynamic> json) => _$_MenuModel(
      code: json['code'] as int?,
      message: json['message'] as String?,
      menuUtama: (json['menu_main'] as List<dynamic>?)
          ?.map((e) => MenuDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      menuCollection: (json['menu_collection'] as List<dynamic>?)
          ?.map((e) => MenuDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      menuTenant: (json['menu_tenant'] as List<dynamic>?)
          ?.map((e) => MenuDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      menuKasOpname: (json['menu_sokas'] as List<dynamic>?)
          ?.map((e) => MenuDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MenuModelToJson(_$_MenuModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'menu_main': instance.menuUtama?.map((e) => e.toJson()).toList(),
      'menu_collection':
          instance.menuCollection?.map((e) => e.toJson()).toList(),
      'menu_tenant': instance.menuTenant?.map((e) => e.toJson()).toList(),
      'menu_sokas': instance.menuKasOpname?.map((e) => e.toJson()).toList(),
    };

_$_MenuDataModel _$$_MenuDataModelFromJson(Map<String, dynamic> json) =>
    _$_MenuDataModel(
      id: json['id'] as int?,
      title: json['title'] as String?,
      subtitle: json['subtitle'] as String?,
      path: json['path'] as String?,
      icon: json['icon'] as String?,
      lockLocation: json['detect_location'] as String?,
    );

Map<String, dynamic> _$$_MenuDataModelToJson(_$_MenuDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'path': instance.path,
      'icon': instance.icon,
      'detect_location': instance.lockLocation,
    };
