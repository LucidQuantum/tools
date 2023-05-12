import 'dart:io';

/// 在dart中，使用dart --enable-asserts启动
bool get isDebug {
  bool dev = false;
  assert(dev = true);
  return dev;
}

String get pwd => Directory.current.path;
