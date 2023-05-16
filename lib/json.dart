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
