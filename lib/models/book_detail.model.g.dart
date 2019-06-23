// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_detail.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookDetailModel _$BookDetailModelFromJson(Map<String, dynamic> json) {
  return BookDetailModel(
      id: json['id'] as int,
      type: json['type'] as String,
      slug: json['slug'] as String,
      name: json['name'] as String,
      namespace: json['namespace'] as String,
      user_id: json['user_id'] as int,
      user: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
      description: json['description'] as String,
      toc_yml: json['toc_yml'] as String,
      creator_id: json['creator_id'] as int,
      public: json['public'] as int,
      item_count: json['item_count'] as int,
      likes_count: json['likes_count'] as int,
      watches_count: json['watches_count'] as int,
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updated_at: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String));
}

Map<String, dynamic> _$BookDetailModelToJson(BookDetailModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'slug': instance.slug,
      'name': instance.name,
      'namespace': instance.namespace,
      'user_id': instance.user_id,
      'user': instance.user,
      'description': instance.description,
      'toc_yml': instance.toc_yml,
      'creator_id': instance.creator_id,
      'public': instance.public,
      'item_count': instance.item_count,
      'likes_count': instance.likes_count,
      'watches_count': instance.watches_count,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at?.toIso8601String()
    };
