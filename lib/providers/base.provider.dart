import 'package:sqflite/sqflite.dart';
import './db.provider.dart';

abstract class BaseTable {
  final String tableName;

  BaseTable(this.tableName);

  /// 获取数据库实例
  Future<Database> get database async {
    return await DBProvider.db.database;
  }

  /// 单个插入
  Future<int> insert(Map<String, dynamic> json) async {
    final db = await database;
    return await db.insert(tableName, json);
  }

  /// 批量插入
  Future<List> batchInsert(List<Map<String, dynamic>> jsonArray) async {
    final db = await database;
    final batch = db.batch();
    jsonArray.map((json) {
      batch.insert(tableName, json);
    });
    return await batch.commit();
  }

  /// 根据 id 单个查询
  Future<Map<String, dynamic>> query(int id) async {
    final db = await database;
    var res = await db.query(tableName, where: 'id = ?', whereArgs: [id]);
    return res.isNotEmpty ? res.first : Null;
  }

  /// 批量查询
  Future<List> batchQuery(String key, String value) async {
    final db = await database;
    var res = await db.query(tableName, where: '$key = ?', whereArgs: [value]);
    return res.isNotEmpty ? res.toList() : [];
  }

  /// 查询全部
  Future<List> queryAll() async {
    final db = await database;
    var res = await db.query(tableName);
    return res.isNotEmpty ? res.toList() : [];
  }

  /// 分页查询
  Future<List> queryByPage(int page, int size) async {
    final db = await database;
    var res = await db.rawQuery(
        "SELECT * from $tableName limit $size offset ${(page - 1) * size};");
    return res.isNotEmpty ? res.toList() : [];
  }

  /// 删除单个值
  Future<int> deleteById(int id) async {
    final db = await database;
    return await db.delete(tableName, where: 'id = ?', whereArgs: [id]);
  }

  /// 清空表
  Future<int> deleteAll() async {
    final db = await database;
    return await db.rawDelete("Delete * from $tableName");
  }

  /// 更新单个值
  Future<int> update(Map<String, dynamic> json) async {
    final db = await database;
    return await db.update(
      tableName,
      json,
      where: 'id = ?',
      whereArgs: [json['id']],
    );
  }
}
