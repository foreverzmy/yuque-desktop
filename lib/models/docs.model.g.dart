// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'docs.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DocsModel _$DocsModelFromJson(Map<String, dynamic> json) {
  return DocsModel(
      data: (json['data'] as List)
          ?.map((e) =>
              e == null ? null : DocModel.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$DocsModelToJson(DocsModel instance) =>
    <String, dynamic>{'data': instance.data};
