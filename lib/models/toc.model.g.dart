// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'toc.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TocModel _$TocModelFromJson(Map<String, dynamic> json) {
  return TocModel(
      title: json['title'] as String,
      slug: json['slug'] as String,
      depth: json['depth'] as int);
}

Map<String, dynamic> _$TocModelToJson(TocModel instance) => <String, dynamic>{
      'title': instance.title,
      'slug': instance.slug,
      'depth': instance.depth
    };

TocsModel _$TocsModelFromJson(Map<String, dynamic> json) {
  return TocsModel(
      data: (json['data'] as List)
          ?.map((e) =>
              e == null ? null : TocModel.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$TocsModelToJson(TocsModel instance) =>
    <String, dynamic>{'data': instance.data};
