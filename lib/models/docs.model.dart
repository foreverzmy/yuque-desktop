// 一般在列表的场景返回的仓库信息
// https://www.yuque.com/yuque/developer/bookserializer
import 'package:json_annotation/json_annotation.dart';
import 'package:yuque/models/doc.model.dart';

part 'docs.model.g.dart';

@JsonSerializable()
class DocsModel {
  final List<DocModel> data; // 仓库编号

  const DocsModel({
    this.data,
  });

  factory DocsModel.fromJson(Map<String, dynamic> json) =>
      _$DocsModelFromJson(json);

  Map<String, dynamic> toJson() => _$DocsModelToJson(this);
}
