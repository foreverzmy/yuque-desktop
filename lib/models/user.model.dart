// 用户信息
// https://www.yuque.com/yuque/developer/userserializer
import 'package:json_annotation/json_annotation.dart';

part 'user.model.g.dart';

@JsonSerializable()
class UserModel {
  final int id; //  用户编号
  final String type; //  类型 [User - 用户, Group - 团队]
  final String login; // 用户个人路径
  final String name; // 昵称
  final String description; // 介绍
  final String avatar_url; // 头像 URL
  final DateTime created_at; // 创建时间
  final DateTime updated_at; // 更新时间

  const UserModel({
    this.id,
    this.type,
    this.login,
    this.name,
    this.description,
    this.avatar_url,
    this.created_at,
    this.updated_at,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
