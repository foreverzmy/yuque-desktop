// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doc_detail.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DocDetailModel _$DocDetailModelFromJson(Map<String, dynamic> json) {
  return DocDetailModel(
      id: json['id'] as int,
      slug: json['slug'] as String,
      title: json['title'] as String,
      user_id: json['user_id'] as int,
      format: json['format'] as String,
      book_id: json['book_id'] as int,
      user: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
      status: json['status'] as int,
      public: json['public'] as int,
      likes_count: json['likes_count'] as int,
      comments_count: json['comments_count'] as int,
      content_updated_at: json['content_updated_at'] == null
          ? null
          : DateTime.parse(json['content_updated_at'] as String),
      book: json['book'] == null
          ? null
          : BookModel.fromJson(json['book'] as Map<String, dynamic>),
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updated_at: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      creator_id: json['creator_id'] as int,
      body: json['body'] as String,
      body_draft: json['body_draft'] as String,
      body_html: json['body_html'] as String,
      body_lake: json['body_lake'] as String,
      deleted_at: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String));
}

Map<String, dynamic> _$DocDetailModelToJson(DocDetailModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
      'title': instance.title,
      'book_id': instance.book_id,
      'book': instance.book,
      'user_id': instance.user_id,
      'user': instance.user,
      'format': instance.format,
      'body': instance.body,
      'body_draft': instance.body_draft,
      'body_html': instance.body_html,
      'body_lake': instance.body_lake,
      'creator_id': instance.creator_id,
      'public': instance.public,
      'status': instance.status,
      'likes_count': instance.likes_count,
      'comments_count': instance.comments_count,
      'content_updated_at': instance.content_updated_at?.toIso8601String(),
      'deleted_at': instance.deleted_at?.toIso8601String(),
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at?.toIso8601String()
    };
