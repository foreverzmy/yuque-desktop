// 获取一个仓库的目录结构
// https://www.yuque.com/yuque/developer/repo#488246f2
import 'package:json_annotation/json_annotation.dart';

part 'toc.model.g.dart';

@JsonSerializable()
class TocModel {
  final String title; // 标题
  final String slug; // 文档 Slug
  final int depth; // 目录层次

  const TocModel({
    this.title,
    this.slug,
    this.depth,
  });

  factory TocModel.fromJson(Map<String, dynamic> json) =>
      _$TocModelFromJson(json);

  Map<String, dynamic> toJson() => _$TocModelToJson(this);
}

@JsonSerializable()
class TocsModel {
  final List<TocModel> data;

  const TocsModel({
    this.data,
  });

  factory TocsModel.fromJson(Map<String, dynamic> json) =>
      _$TocsModelFromJson(json);

  Map<String, dynamic> toJson() => _$TocsModelToJson(this);
}
