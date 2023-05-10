import 'random.dart';

class Generator {
  static String id([length = 21]) {
    const letters =
        "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
    String id = "";
    while (id.length < length) {
      id += letters.random;
    }
    return id;
  }

  static String smsCode() {
    const numbers = "0123456789";
    String code = "";
    int smsLength = 4;
    while (code.length < smsLength) {
      code += numbers.random;
    }
    return code;
  }
}
