import 'dart:convert';

import 'package:yuque/models/user.model.dart';
import 'package:yuque/utils/http.dart';

class GroupService {
  Future<List<UserModel>> getJoinListByID(int id) async {
    final res = await http.get("/users/$id/groups");
    final jsonRes = json.decode(res.toString());
  }
}
