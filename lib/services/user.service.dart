import 'dart:convert';
import 'package:yuque/utils/http.dart';
import 'package:yuque/models/user_detail.model.dart';

class UserService {
  // 获取认证的用户的个人信息
  static Future<UserDetailModel> getCurrentUser() async {
    final res = await http.get("/user");

    final jsonRes = json.decode(res.toString());

    final user = UserDetailModel.fromJson(jsonRes["data"]);
    return user;
  }

  // 通过 id 获取用户信息
  static Future<UserDetailModel> getUserById(int id) async {
    final res = await http.get("/users/$id");

    final jsonRes = json.decode(res.toString());

    final user = UserDetailModel.fromJson(jsonRes["data"]);
    return user;
  }

  // 通过 login 获取用户信息
  static Future<UserDetailModel> getUserByLogin(String login) async {
    final res = await http.get("/users/$login");

    final jsonRes = json.decode(res.toString());

    final user = UserDetailModel.fromJson(jsonRes["data"]);
    return user;
  }
}
