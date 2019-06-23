// 文档版本基本信息
// https://www.yuque.com/yuque/developer/docversionserializer
import 'package:json_annotation/json_annotation.dart';
import 'package:yuque/models/user.model.dart';

part 'doc_version_detail.model.g.dart';

@JsonSerializable()
class DocVersionDetailModel {
  final int id; //  草稿编号
  final int doc_id; // 文档编号
  final String slug; //  文档路径
  final String title; // 标题
  final int user_id; // 创建人编号
  final UserModel user; // 创建人信息
  final bool draft; // 是否是草稿
  final String body; // 正文 markdown
  final String body_asl; // asl 格式正文
  final String body_html; // 正文 HTML 代码
  final DateTime created_at; // 创建时间
  final DateTime updated_at; // 更新时间

  const DocVersionDetailModel({
    this.id,
    this.doc_id,
    this.slug,
    this.title,
    this.user,
    this.user_id,
    this.draft,
    this.body,
    this.body_asl,
    this.body_html,
    this.created_at,
    this.updated_at,
  });

  factory DocVersionDetailModel.fromJson(Map<String, dynamic> json) =>
      _$DocVersionDetailModelFromJson(json);

  Map<String, dynamic> toJson() => _$DocVersionDetailModelToJson(this);
}
