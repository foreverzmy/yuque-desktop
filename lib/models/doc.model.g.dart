// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doc.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DocModel _$DocModelFromJson(Map<String, dynamic> json) {
  return DocModel(
      id: json['id'] as int,
      slug: json['slug'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      custom_description: json['custom_description'] as String,
      user_id: json['user_id'] as int,
      book_id: json['book_id'] as int,
      format: json['format'] as String,
      user: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
      status: json['status'] as int,
      last_editor: json['last_editor'] == null
          ? null
          : UserModel.fromJson(json['last_editor'] as Map<String, dynamic>),
      last_editor_id: json['last_editor_id'] as int,
      public: json['public'] as int,
      likes_count: json['likes_count'] as int,
      comments_count: json['comments_count'] as int,
      word_count: json['word_count'] as int,
      draft_version: json['draft_version'] as int,
      book: json['book'] == null
          ? null
          : BookModel.fromJson(json['book'] as Map<String, dynamic>),
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updated_at: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      published_at: json['published_at'] == null
          ? null
          : DateTime.parse(json['published_at'] as String),
      content_updated_at: json['content_updated_at'] == null
          ? null
          : DateTime.parse(json['content_updated_at'] as String),
      first_published_at: json['first_published_at'] == null
          ? null
          : DateTime.parse(json['first_published_at'] as String));
}

Map<String, dynamic> _$DocModelToJson(DocModel instance) => <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
      'title': instance.title,
      'description': instance.description,
      'custom_description': instance.custom_description,
      'user_id': instance.user_id,
      'book_id': instance.book_id,
      'format': instance.format,
      'public': instance.public,
      'status': instance.status,
      'likes_count': instance.likes_count,
      'comments_count': instance.comments_count,
      'word_count': instance.word_count,
      'draft_version': instance.draft_version,
      'book': instance.book,
      'user': instance.user,
      'last_editor': instance.last_editor,
      'last_editor_id': instance.last_editor_id,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at?.toIso8601String(),
      'content_updated_at': instance.content_updated_at?.toIso8601String(),
      'published_at': instance.published_at?.toIso8601String(),
      'first_published_at': instance.first_published_at?.toIso8601String()
    };
