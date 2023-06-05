import 'dart:convert';

import 'package:tools/error_handling/fault.dart';

typedef Json = Map<String, dynamic>;

/// 一个可以转化为[Json]的对象
abstract class Jsonable {
  Json toJson();
}

extension JsonParserExtension on String {
  Json toJson() {
    try {
      return jsonDecode(this);
    } catch (e) {
      throw Fault.input("String转化为Json时失败：$this"); // 手动写json才会遇到的问题
    }
  }
}

extension extractFieldExtension on Json {
  /// 确保某个key的Type正确
  void ensure<T>(String key, {bool nullable = false}) {
    // 允许为空，并且value为空时，跳过检查
    if (nullable && this[key] == null) return;

    // 其他情况中，都必须有正确格式的value
    if (!containsKey(key)) throw Fault.input("Json中缺少$key");
    if (this[key] is! T) throw Fault.input("Json中$key的格式应该为${T.toString()}");
  }

  /// 从json中抽出某个具体的数值，如果不是则报错
  T extract<T>(String key) {
    ensure<T>(key);
    return this[key];
  }
}
