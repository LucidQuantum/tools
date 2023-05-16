import 'dart:convert';

import 'package:tools/refuse.dart';

typedef Json = Map<String, dynamic>;

Json toJson(String string) {
  try {
    return jsonDecode(string);
  } catch (e) {
    throw Refuse("无效的JSON格式：$string"); // 手动写json才会遇到的问题
  }
}
