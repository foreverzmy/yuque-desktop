// 一般在列表的场景返回的仓库信息
// https://www.yuque.com/yuque/developer/bookserializer
import 'package:json_annotation/json_annotation.dart';
import 'package:yuque/models/user.model.dart';

part 'book.model.g.dart';

@JsonSerializable()
class BookModel {
  final int id; // 仓库编号
  final String type; // 类型 [Book - 文档]
  final String slug; // 仓库路径
  final String name; // 名称
  final String namespace; // 仓库完整路径 user.login/book.slug
  final int user_id; // 所属的团队/用户编号
  final UserModel user;
  final String description; //  介绍
  final int creator_id; // 创建人 User Id
  final int public; // 公开状态 [1 - 公开, 0 - 私密]
  final int likes_count; // 喜欢数量
  final int watches_count; // 订阅数量
  final DateTime created_at; // 创建时间
  final DateTime updated_at; // 更新时间

  const BookModel({
    this.id,
    this.type,
    this.slug,
    this.name,
    this.namespace,
    this.user_id,
    this.user,
    this.description,
    this.creator_id,
    this.public,
    this.likes_count,
    this.watches_count,
    this.created_at,
    this.updated_at,
  });

  factory BookModel.fromJson(Map<String, dynamic> json) =>
      _$BookModelFromJson(json);

  Map<String, dynamic> toJson() => _$BookModelToJson(this);
}
