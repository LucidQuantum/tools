import 'dart:async';

class Schedule {
  // 单例
  Schedule._internal();
  static final _singleton = Schedule._internal();
  factory Schedule() => _singleton;

  /// 添加每日任务
  void addDailyTask(int hour, int minute, Function task) {
    DateTime now = DateTime.now();
    DateTime scheduledTime =
        DateTime(now.year, now.month, now.day, hour, minute);

    if (now.isAfter(scheduledTime)) {
      scheduledTime = scheduledTime.add(Duration(days: 1));
    }

    Timer(Duration(milliseconds: scheduledTime.difference(now).inMilliseconds),
        () {
      task();
      Timer.periodic(Duration(days: 1), (Timer t) {
        task();
      });
    });
  }
}
