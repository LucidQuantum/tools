import 'dart:convert';

import 'package:tools/refuse.dart';

typedef Json = Map<String, dynamic>;

extension JsonParserExtension on String {
  Json toJson() {
    try {
      return jsonDecode(this);
    } catch (e) {
      throw Refuse("String转化为Json时失败：$this"); // 手动写json才会遇到的问题
    }
  }
}

extension extractFieldExtension on Json {
  /// 确保某个key存在指定格式的值
  checkExist<T>(String key) {
    if (!containsKey(key)) throw Refuse("数据中缺少$key");
    if (this[key] is! T) throw Refuse("数据$key的格式不正确，应该为${T.toString()}");
  }

  /// 从json中抽出某个具体的数值，如果不是则报错
  T extract<T>(String key) {
    checkExist(key);
    return this[key];
  }
}
