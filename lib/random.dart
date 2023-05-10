import 'dart:math';

/// 从一个列表中取随机一个
extension RandomPick<T> on Iterable<T> {
  T get random => toList()[Random().nextInt(length)];
}

extension RandomLetter on String {
  String get random => this[Random().nextInt(length)];
}
