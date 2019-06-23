// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_detail.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDetailModel _$UserDetailModelFromJson(Map<String, dynamic> json) {
  return UserDetailModel(
      id: json['id'] as int,
      space_id: json['space_id'] as int,
      account_id: json['account_id'] as int,
      owner_id: json['owner_id'] as int,
      type: json['type'] as String,
      login: json['login'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      avatar_url: json['avatar_url'] as String,
      books_count: json['books_count'] as int,
      public_books_count: json['public_books_count'] as int,
      members_count: json['members_count'] as int,
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updated_at: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String));
}

Map<String, dynamic> _$UserDetailModelToJson(UserDetailModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'space_id': instance.space_id,
      'account_id': instance.account_id,
      'owner_id': instance.owner_id,
      'type': instance.type,
      'login': instance.login,
      'name': instance.name,
      'avatar_url': instance.avatar_url,
      'books_count': instance.books_count,
      'public_books_count': instance.public_books_count,
      'members_count': instance.members_count,
      'description': instance.description,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at?.toIso8601String()
    };
