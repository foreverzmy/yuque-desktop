// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doc_version_detail.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DocVersionDetailModel _$DocVersionDetailModelFromJson(
    Map<String, dynamic> json) {
  return DocVersionDetailModel(
      id: json['id'] as int,
      doc_id: json['doc_id'] as int,
      slug: json['slug'] as String,
      title: json['title'] as String,
      user: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
      user_id: json['user_id'] as int,
      draft: json['draft'] as bool,
      body: json['body'] as String,
      body_asl: json['body_asl'] as String,
      body_html: json['body_html'] as String,
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updated_at: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String));
}

Map<String, dynamic> _$DocVersionDetailModelToJson(
        DocVersionDetailModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'doc_id': instance.doc_id,
      'slug': instance.slug,
      'title': instance.title,
      'user_id': instance.user_id,
      'user': instance.user,
      'draft': instance.draft,
      'body': instance.body,
      'body_asl': instance.body_asl,
      'body_html': instance.body_html,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at?.toIso8601String()
    };
