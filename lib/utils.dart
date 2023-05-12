import 'dart:io';

/// 在Flutter中也有一个变量`kDebugMode`
/// 但它是`bool.fromEnvironment('dart.vm.product')`
/// 而我不知道dart VM中有什么环境变量，所以这个方式不可控。
bool get devMode {
  bool dev = false;
  assert(dev = true);
  return dev;
}

String get pwd => Directory.current.path;
