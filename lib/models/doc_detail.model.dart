// 文档基本信息，一般用在列表场景
// https://www.yuque.com/yuque/developer/docserializer
import 'package:json_annotation/json_annotation.dart';
import 'package:yuque/models/book.model.dart';
import 'package:yuque/models/user.model.dart';

part 'doc_detail.model.g.dart';

@JsonSerializable()
class DocDetailModel {
  final int id; // 文档编号
  final String slug; // 文档路径
  final String title; // 标题
  final int book_id; // 仓库编号，就是 repo_id
  final BookModel book; // 所属知识库 repo 信息
  final int user_id; // 文档创建人 user_id
  final UserModel user; // 所属团队（个人）
  final String format; // 描述了正文的格式 [asl, markdown]
  final String body; // 草稿 Markdown 源代码
  final String body_draft; // 草稿 Markdown 源代码
  final String body_html; // 转换过后的正文 HTML
  final String body_lake; // 语雀 lake 格式的文档内容
  final int creator_id;
  final int public; // 公开状态 [1 - 公开, 0 - 私密]
  final int status; // 状态 [1 - 正常, 0 - 草稿]
  final int likes_count; // 喜欢数量
  final int comments_count; // 评论数量
  final DateTime content_updated_at; // 文档内容更新时间
  final DateTime deleted_at; // 删除时间，未删除为 null
  final DateTime created_at; // 创建时间
  final DateTime updated_at; // 更新时间

  const DocDetailModel({
    this.id,
    this.slug,
    this.title,
    this.user_id,
    this.format,
    this.book_id,
    this.user,
    this.status,
    this.public,
    this.likes_count,
    this.comments_count,
    this.content_updated_at,
    this.book,
    this.created_at,
    this.updated_at,
    this.creator_id,
    this.body,
    this.body_draft,
    this.body_html,
    this.body_lake,
    this.deleted_at,
  });

  factory DocDetailModel.fromJson(Map<String, dynamic> json) =>
      _$DocDetailModelFromJson(json);

  Map<String, dynamic> toJson() => _$DocDetailModelToJson(this);
}
