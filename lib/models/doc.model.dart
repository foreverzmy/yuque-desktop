// 文档基本信息，一般用在列表场景
// https://www.yuque.com/yuque/developer/docserializer
import 'package:json_annotation/json_annotation.dart';
import 'package:yuque/models/book.model.dart';
import 'package:yuque/models/user.model.dart';

part 'doc.model.g.dart';

@JsonSerializable()
class DocModel {
  final int id; // 文档编号
  final String slug; // 文档路径
  final String title; // 标题
  final int depth; // 目录层级
  final String description; // 说明
  final String custom_description;
  final int user_id; // 文档创建人 user_id
  final int book_id;
  final String format; // 描述了正文的格式 [asl, markdown]
  final int public; // 公开状态 [1 - 公开, 0 - 私密]
  final int status; // 状态 [1 - 正常, 0 - 草稿]
  final int likes_count; // 喜欢数量
  final int comments_count; // 评论数量
  final int word_count;
  final int draft_version;
  final BookModel book; // 所属知识库
  final UserModel user; // 所属团队（个人）
  final UserModel last_editor; // 创建人
  final int last_editor_id; // 创建人 User Id
  final DateTime created_at; // 创建时间
  final DateTime updated_at; // 更新时间
  final DateTime content_updated_at; // 文档内容更新时间
  final DateTime published_at;
  final DateTime first_published_at;

  const DocModel({
    this.id,
    this.slug,
    this.title,
    this.description,
    this.custom_description,
    this.user_id,
    this.book_id,
    this.depth,
    this.format,
    this.user,
    this.status,
    this.last_editor,
    this.last_editor_id,
    this.public,
    this.likes_count,
    this.comments_count,
    this.word_count,
    this.draft_version,
    this.book,
    this.created_at,
    this.updated_at,
    this.published_at,
    this.content_updated_at,
    this.first_published_at,
  });

  factory DocModel.fromJson(Map<String, dynamic> json) =>
      _$DocModelFromJson(json);

  Map<String, dynamic> toJson() => _$DocModelToJson(this);
}
