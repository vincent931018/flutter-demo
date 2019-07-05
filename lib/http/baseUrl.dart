import 'package:flutter_app/config/index.dart';

// 接口调用 baseURL mode 0:调试 1:测试 2:准生产 3:生产
String getBaseUrl(num version) {
  String baseUrl;
  if (mode == 0) {
    baseUrl = "https://devgate.lanrenyun.cn/api/lrst/v1";
  } else if (mode == 1) {
    baseUrl = "https://devgate.lanrenyun.cn/api/lrst/v1";
  } else if (mode == 2) {
    baseUrl = "https://pregate.lanrenyun.cn/api/lrst/v1";
  } else if (mode == 3) {
    baseUrl = "https://gate.lanrenyun.cn/api/lrst/v1";
  } else {
    baseUrl = "https://gate.lanrenyun.cn/api/lrst/v1";
  }
  return baseUrl;
}