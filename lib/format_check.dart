/// 提供了一些常见格式的检查方法，返回布尔值
class FormatChecker {
  /// 手机号：11位数字，以1开头
  bool phone(String phone) {
    final RegExp pattern = RegExp(r'^1\d{10}$');
    if (!pattern.hasMatch(phone)) return false;
    return true;
  }

  /// 短信验证码：4位数字
  bool sms(String sms) {
    final RegExp pattern = RegExp(r'^\d{4}$');
    if (!pattern.hasMatch(sms)) return false;
    return true;
  }
}
