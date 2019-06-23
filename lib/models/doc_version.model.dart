// 文档版本基本信息
// https://www.yuque.com/yuque/developer/docversionserializer
import 'package:json_annotation/json_annotation.dart';
import 'package:yuque/models/user.model.dart';

part 'doc_version.model.g.dart';

@JsonSerializable()
class DocVersionModel {
  final int id; //  草稿编号
  final int doc_id; // 文档编号
  final String slug; //  文档路径
  final String title; // 标题
  final int user_id; // 创建人编号
  final UserModel user; // 创建人信息
  final bool draft; // 是否是草稿
  final DateTime created_at; // 创建时间
  final DateTime updated_at; // 更新时间

  const DocVersionModel({
    this.id,
    this.doc_id,
    this.slug,
    this.title,
    this.user,
    this.user_id,
    this.draft,
    this.created_at,
    this.updated_at,
  });

  factory DocVersionModel.fromJson(Map<String, dynamic> json) =>
      _$DocVersionModelFromJson(json);

  Map<String, dynamic> toJson() => _$DocVersionModelToJson(this);
}
