// 团队成员信息
// https://www.yuque.com/yuque/developer/groupuserserializer
import 'package:json_annotation/json_annotation.dart';
import 'package:yuque/models/user.model.dart';

part 'group_user.model.g.dart';

@JsonSerializable()
class GroupUserModel {
  final int id; // GroupUser Id
  final int group_id; // 团队编号
  final UserModel group; // 团队信息
  final int user_id; // 用户编号
  final UserModel user; // 用户信息
  final int role; // 角色 [0 - Owner, 1 - Member]
  final DateTime created_at; // 创建时间
  final DateTime updated_at; // 更新时间

  const GroupUserModel({
    this.id,
    this.group_id,
    this.group,
    this.user_id,
    this.user,
    this.role,
    this.updated_at,
    this.created_at,
  });

  factory GroupUserModel.fromJson(Map<String, dynamic> json) =>
      _$GroupUserModelFromJson(json);

  Map<String, dynamic> toJson() => _$GroupUserModelToJson(this);
}
