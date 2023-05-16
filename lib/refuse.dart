/// 自定义的通用错误管理方式
/// 在所有我自己设计的软件中
///
/// 1. 需要在全局范围catch这个类型，并添加处理方式（比如客户端可以弹出窗口，服务端可以设置回复）
/// 2. 遇到任何错误，直接throw这个class
class Refuse {
  String reason;
  Refuse(this.reason);

  String toString() => "未捕捉的Refuse: $reason";
}
