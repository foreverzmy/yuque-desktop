// 一般在列表的场景返回的仓库信息
// https://www.yuque.com/yuque/developer/bookserializer
import 'package:json_annotation/json_annotation.dart';
import 'package:yuque/models/book.model.dart';

part 'books.model.g.dart';

@JsonSerializable()
class BooksModel {
  final List<BookModel> data; // 仓库编号

  const BooksModel({
    this.data,
  });

  factory BooksModel.fromJson(Map<String, dynamic> json) =>
      _$BooksModelFromJson(json);

  Map<String, dynamic> toJson() => _$BooksModelToJson(this);
}
