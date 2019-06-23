// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_user.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupUserModel _$GroupUserModelFromJson(Map<String, dynamic> json) {
  return GroupUserModel(
      id: json['id'] as int,
      group_id: json['group_id'] as int,
      group: json['group'] == null
          ? null
          : UserModel.fromJson(json['group'] as Map<String, dynamic>),
      user_id: json['user_id'] as int,
      user: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
      role: json['role'] as int,
      updated_at: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String));
}

Map<String, dynamic> _$GroupUserModelToJson(GroupUserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'group_id': instance.group_id,
      'group': instance.group,
      'user_id': instance.user_id,
      'user': instance.user,
      'role': instance.role,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at?.toIso8601String()
    };
