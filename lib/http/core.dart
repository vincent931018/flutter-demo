import 'package:dio/dio.dart';
import './interceptors.dart';
import './baseUrl.dart';

Dio dio = injectInterceptors();

Future httpCoreFun (String url, Map params, Map apiOptions) async {
  dio.options.baseUrl = getBaseUrl(apiOptions["version"]);
  dio.options.headers.addAll(apiOptions["headers"]);
  await new Future.delayed(Duration(milliseconds: apiOptions["delay"]));
  return await dio.post(url, data: params).then((res) {
    return new Future(() => res);
  });
}