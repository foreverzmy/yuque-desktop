// import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

/// 用 shared_preferences 做简单 kv 存储
class Storage {
  static Storage _instance;
  static SharedPreferences _prefs;

  /// This class is intended to be used as a mixin, and should not be extended directly.
  Storage._();

  Future<void> _init() async {
    // const MethodChannel('plugins.flutter.io/shared_preferences')
    //     .setMockMethodCallHandler((MethodCall methodCall) async {
    //   if (methodCall.method == 'getAll') {
    //     return <String, dynamic>{}; // set initial values here if desired
    //   }
    //   return null;
    // });
    _prefs = await SharedPreferences.getInstance();
  }

  /// 复用实例
  static Future<Storage> getInstance() async {
    if (_instance == null) {
      _instance = Storage._();
      await _instance._init();
    }
    return _instance;
  }

  /// 判断 shared_preferences 是否初始化，防止未初始化使用报错
  static bool _beforeCheck() {
    return _prefs == null ? true : false;
  }

  /// 获取所有 key
  Set<String> getKeys() {
    if (_beforeCheck()) return null;
    return _prefs.getKeys();
  }

  /// 判断是否存在数据
  bool hasKey(String key) {
    Set keys = getKeys();
    return keys.contains(key);
  }

  /// 查找 key，返回任意类型
  get(String key) {
    if (_beforeCheck()) return null;
    return _prefs.get(key);
  }

  /// 查找 string 类型数据
  getString(String key) {
    if (_beforeCheck()) return null;
    return _prefs.getString(key);
  }

  /// 设置 string 类型数据
  Future<bool> setString(String key, String value) {
    if (_beforeCheck()) return null;
    return _prefs.setString(key, value);
  }

  bool getBool(String key) {
    if (_beforeCheck()) return null;
    return _prefs.getBool(key);
  }

  Future<bool> setBool(String key, bool value) {
    if (_beforeCheck()) return null;
    return _prefs.setBool(key, value);
  }

  int getInt(String key) {
    if (_beforeCheck()) return null;
    return _prefs.getInt(key);
  }

  Future<bool> setInt(String key, int value) {
    if (_beforeCheck()) return null;
    return _prefs.setInt(key, value);
  }

  double getDouble(String key) {
    if (_beforeCheck()) return null;
    return _prefs.getDouble(key);
  }

  Future<bool> setDouble(String key, double value) {
    if (_beforeCheck()) return null;
    return _prefs.setDouble(key, value);
  }

  List<String> getStringList(String key) {
    return _prefs.getStringList(key);
  }

  Future<bool> setStringList(String key, List<String> value) {
    if (_beforeCheck()) return null;
    return _prefs.setStringList(key, value);
  }

  Future<bool> remove(String key) {
    if (_beforeCheck()) return null;
    return _prefs.remove(key);
  }

  Future<bool> clear() {
    if (_beforeCheck()) return null;
    return _prefs.clear();
  }
}
