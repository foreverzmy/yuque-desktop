import 'dart:convert';
import 'package:yuque/models/toc.model.dart';
import 'package:yuque/utils/http.dart';
import 'package:yuque/blocs/user.bloc.dart';
import 'package:yuque/models/book.model.dart';
import 'package:yuque/models/books.model.dart';

class RepoService {
  // 获取某个用户的仓库列表
  static Future<List<BookModel>> getUserRepos({
    String type: 'all', // Book, Design, all - 所有类型
    int offset: 0, // 用于分页，效果类似 MySQL 的 limit offset，一页 20 条
  }) async {
    final login = userbloc.stream.value.login;

    final res = await http.get("/users/$login/repos", queryParameters: {
      "type": type,
      "offset": offset,
    });

    final jsonRes = json.decode(res.toString());

    final repos = BooksModel.fromJson(jsonRes);

    return repos.data;
  }

  // 获取一个仓库的目录结构
  static Future<List<TocModel>> getRepoDoc(int id) async {
    final res = await http.get("/repos/$id/toc");

    final jsonRes = json.decode(res.toString());

    final tocs = TocsModel.fromJson(jsonRes);

    return tocs.data;
  }
}
