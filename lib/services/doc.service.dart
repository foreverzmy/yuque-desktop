import 'dart:convert';

import 'package:yuque/models/doc.model.dart';
import 'package:yuque/models/doc_detail.model.dart';
import 'package:yuque/models/docs.model.dart';
import 'package:yuque/utils/http.dart';

class DocService {
  // 获取一个仓库的文档列表
  static Future<List<DocModel>> getDocsById(int id) async {
    final res = await http.get('/repos/$id/docs');

    final jsonRes = json.decode(res.toString());

    final docs = DocsModel.fromJson(jsonRes);

    return docs.data;
  }

  // 获取单篇文档的详细信息
  static Future<DocDetailModel> getDocDetail(int book_id, int id) async {
    final res = await http.get('/repos/$book_id/docs/$id',
        queryParameters: {'Key': 'Description', 'raw': 1});

    final jsonRes = json.decode(res.toString());

    final doc = DocDetailModel.fromJson(jsonRes['data']);

    return doc;
  }
}
