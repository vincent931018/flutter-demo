/*
 * @Author: caowencheng
 * @GitHub: https://github.com/cwc845982120
 * @Description: httpClient 核心调用
 * @Date: 2019-07-16
 */

import 'package:dio/dio.dart';
import './interceptors.dart';
import './baseUrl.dart';

Dio dio = injectInterceptors();

Future httpCoreFun (String url, Map params, int version, Map<String, String> headers, int delay) async {
    Map<String, String> defaultHeaders = {
        "content-type": "application/json;charset=UTF-8"
    };
    if (headers != null) {
        defaultHeaders.addAll(headers);
    }
    dio.options.baseUrl = getBaseUrl(version);
    dio.options.headers = defaultHeaders;
    await new Future.delayed(Duration(milliseconds: delay));
    return await dio.post(url, data: params).then((res) {
        return new Future(() => res);
    });
}