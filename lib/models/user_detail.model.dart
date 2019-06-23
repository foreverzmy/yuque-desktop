// 用户/团队详细信息
// https://www.yuque.com/yuque/developer/userdetailserializer
import 'package:json_annotation/json_annotation.dart';

part 'user_detail.model.g.dart';

@JsonSerializable()
class UserDetailModel {
  final int id; //  用户编号
  final int space_id; // 企业空间编号
  final int account_id; // 用户账户编号
  final int owner_id; // 团队创建人，仅适用于 type - 'Group'
  final String type; //  类型 [User - 用户, Group - 团队]
  final String login; // 用户个人路径
  final String name; // 昵称
  final String avatar_url; // 头像 URL
  final int books_count; // 仓库数量
  final int public_books_count; // 公开仓库数量
  final int members_count; // 团队成员数量
  final String description; // 介绍
  final DateTime created_at; // 创建时间
  final DateTime updated_at; // 更新时间

  const UserDetailModel({
    this.id,
    this.space_id,
    this.account_id,
    this.owner_id,
    this.type,
    this.login,
    this.name,
    this.description,
    this.avatar_url,
    this.books_count,
    this.public_books_count,
    this.members_count,
    this.created_at,
    this.updated_at,
  });

  factory UserDetailModel.fromJson(Map<String, dynamic> json) =>
      _$UserDetailModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserDetailModelToJson(this);
}
