import 'dart:io' show Directory;
import 'dart:async' show Future;
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:sqflite/sqflite.dart';

class DBProvider {
  DBProvider._();

  static final DBProvider db = DBProvider._();

  static Database _database;

  Future<Database> get database async {
    if (_database != null) return _database;

    // if _database is null we instantiate it
    _database = await initDB();
    return _database;
  }

  initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "yuque.db");
    await deleteDatabase(path); // 删除数据库，修改数据库时开启

    return await openDatabase(
      path,
      version: 1,
      onOpen: (db) {
        print('open db');
      },
      onCreate: (Database db, int version) async {
        /// 从本地文件读取创建数据库 sql
        String data = await rootBundle.loadString('assets/yuque.sql');
        await db.execute(data);
      },
    );
  }
}
