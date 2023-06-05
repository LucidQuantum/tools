import 'dart:convert';
import 'dart:io';

import 'package:tools/json.dart';

extension SendJsonExtension on WebSocket {
  /// 发送一个可以转化为Json的东西
  void send(Jsonable serializable) => add(
        jsonEncode(
          serializable.toJson(),
        ),
      );
}
