import 'package:tools/error_handling/fault.dart';

/// 提供了一些常见格式的检查方法，返回布尔值
class FormatChecker {
  /// 手机号：11位数字，以1开头
  static void phone(String phone) {
    final RegExp pattern = RegExp(r'^1\d{10}$');
    if (!pattern.hasMatch(phone)) throw Fault.input("手机号应该是11位数字，以1开头");
  }

  /// 短信验证码：4位数字
  static void sms(String sms) {
    final RegExp pattern = RegExp(r'^\d{4}$');
    if (!pattern.hasMatch(sms)) throw Fault.input("短信验证码应该是4位数字");
  }
}
