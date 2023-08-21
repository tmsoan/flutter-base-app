// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaskEntity _$TaskEntityFromJson(Map<String, dynamic> json) => TaskEntity(
      id: json['id'] as String?,
      name: json['name'] as String?,
      avatar: json['avatar'] as String?,
      createdAt: json['createdAt'] as String?,
    );

Map<String, dynamic> _$TaskEntityToJson(TaskEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'avatar': instance.avatar,
      'createdAt': instance.createdAt,
    };
