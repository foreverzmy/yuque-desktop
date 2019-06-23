// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'books.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BooksModel _$BooksModelFromJson(Map<String, dynamic> json) {
  return BooksModel(
      data: (json['data'] as List)
          ?.map((e) =>
              e == null ? null : BookModel.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$BooksModelToJson(BooksModel instance) =>
    <String, dynamic>{'data': instance.data};
