import 'dart:convert';

/// 解析器[Parser]
///
/// 当数据被传输或保存时，通常需要经历格式的转换。
/// 而对于任何Model，定义一个Parser就可以解决数据打包的问题：
///
/// ```
/// class UserParser extends Parser<User> {}
/// ```
abstract class Parser<T> {
  Map toMap(T item);
  T fromMap(Map map);

  String toJson(T item) => jsonEncode(toMap(item));
  T fromJson(String json) => fromMap(jsonDecode(json));
}
