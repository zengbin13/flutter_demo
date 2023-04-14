// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserInfoModel _$UserInfoModelFromJson(Map<String, dynamic> json) =>
    UserInfoModel(
      json['username'] as String,
      json['user_id'] as int,
      json['avatar_url'] as String,
      json['phone'] as String,
      (json['base'] as List<dynamic>)
          .map((e) => Base.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UserInfoModelToJson(UserInfoModel instance) =>
    <String, dynamic>{
      'username': instance.username,
      'user_id': instance.userId,
      'avatar_url': instance.avatarUrl,
      'phone': instance.phone,
      'base': instance.base,
    };

Base _$BaseFromJson(Map<String, dynamic> json) => Base(
      json['id'] as int,
      json['name'] as String,
      (json['factory'] as List<dynamic>)
          .map((e) => Factory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BaseToJson(Base instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'factory': instance.factory,
    };

Factory _$FactoryFromJson(Map<String, dynamic> json) => Factory(
      json['name'] as String,
      json['id'] as int,
      json['checked'] as int,
    );

Map<String, dynamic> _$FactoryToJson(Factory instance) => <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'checked': instance.checked,
    };
