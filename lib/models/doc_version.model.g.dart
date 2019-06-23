// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doc_version.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DocVersionModel _$DocVersionModelFromJson(Map<String, dynamic> json) {
  return DocVersionModel(
      id: json['id'] as int,
      doc_id: json['doc_id'] as int,
      slug: json['slug'] as String,
      title: json['title'] as String,
      user: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
      user_id: json['user_id'] as int,
      draft: json['draft'] as bool,
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updated_at: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String));
}

Map<String, dynamic> _$DocVersionModelToJson(DocVersionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'doc_id': instance.doc_id,
      'slug': instance.slug,
      'title': instance.title,
      'user_id': instance.user_id,
      'user': instance.user,
      'draft': instance.draft,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at?.toIso8601String()
    };
