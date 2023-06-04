import 'fault.dart';

/// 通常用于try/catch，在catch(error, stackTrace) {}中直接使用handle
String handleFault(Object error, StackTrace stackTrace) {
  late final String message;

  if (error is Fault) {
    // 预料之内的错误
    message = error.reason;
  } else {
    // 预期外的错误，记录信息，方便找原因
    final filteredTrace = stackTrace.toString().split('\n').where((line) {
      return line.contains('bitotus');
    }).join('\n');
    final errorDetails = error.toString();
    message = "预期外的错误：【$errorDetails】\n相关代码位置:\n$filteredTrace";
  }

  return message;
}
