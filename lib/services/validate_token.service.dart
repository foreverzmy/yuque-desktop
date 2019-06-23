import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:yuque/blocs/user.bloc.dart';
import 'package:yuque/models/user_detail.model.dart';
import 'package:yuque/utils/http.dart';

class Token {
  static Future<bool> validate(String token) async {
    try {
      var res = await dio.get(
        '/user',
        options: Options(
          headers: {"X-Auth-Token": token},
        ),
      );

      var resJson = json.decode(res.toString());
      userbloc.add(UserDetailModel.fromJson(resJson["data"]));

      return res.statusCode == 200;
    } catch (e) {
      return false;
    }
  }
}
