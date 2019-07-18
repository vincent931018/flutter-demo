import 'package:dio/dio.dart';
import './interceptors.dart';
import './baseUrl.dart';

Dio dio = injectInterceptors();

Future httpCoreFun (String url, Map params, int version, int delay) async {
  dio.options.baseUrl = getBaseUrl(version);
  await new Future.delayed(Duration(milliseconds: delay));
  return await dio.post(url, data: params).then((res) {
    return new Future(() => res);
  });
}