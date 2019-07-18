/*
 * @Author: caowencheng
 * @GitHub: https://github.com/cwc845982120
 * @Description: httpClient 主逻辑
 * @Date: 2019-07-16
 */

import './core.dart';
import './apiCounter.dart';
import './loadingCtrl.dart';
import './exceptionCtrl.dart';

// 链式调用标识
bool chainFlag = false;
// 接口调用计数器
ApiCounter apiCounter = new ApiCounter();
// loading控制器
LoadingCtrl loadingCtrl = new LoadingCtrl();
// 异常控制器
ExceptionCtrl exceptionCtrl = new ExceptionCtrl();

class HttpClient {

    /*
    post 请求
     */
    static Future post(String url, Map params, {
        bool showLoading = true, // 接口是否显示loading
        Map<String, String> headers,
        int delay = 0, // 接口延迟调用
        int version = 0, // 接口版本// 自定义请求头
        bool chainStart = false, // 链式调用开头
        bool chainFinish = false, // 链式调用结尾
        bool chainReject = false, // 链式调用是否取消下传
        bool effectMainProcess = false // 是否关键请求 异常跳错误页
    }) async {
        if (chainReject) {
            apiCounter.resetApiCount();
            loadingCtrl.hideLoading();
            return Future.error({
                "code": 9999,
                "msg": "链式请求中断"
            });
        }
        if (showLoading) {
            if (apiCounter.getApiCount() == 0) {
                loadingCtrl.showLoading();
            }
            if (chainStart) {
                apiCounter.increase();
                chainFlag = true;
            }
            apiCounter.increase();
        }
        return await httpCoreFun(url, params, version, headers, delay).then((res) {
            if (showLoading) {
                if (chainFinish) {
                    apiCounter.decrease();
                    chainFlag = false;
                }
                apiCounter.decrease();
                if (apiCounter.getApiCount() == 0) {
                    loadingCtrl.hideLoading();
                }
            }
            return new Future(() => res);
        }, onError: (e) {
            if (showLoading) {
                if (chainFinish) {
                    apiCounter.decrease();
					chainFlag = false;
                }
                apiCounter.decrease();
                if (apiCounter.getApiCount() == 0) {
                    loadingCtrl.hideLoading();
                }
            }
            return Future.error(e);
        }).catchError((e) {
            if (chainReject) {
                return Future.error({
                    "code": e.response == null ? 9999 : (e.response.statusCode == null ? 9999 : e.response.statusCode),
                    "msg": e.message
                });
            }
            if (!effectMainProcess) {
                if (chainFlag) {
                    apiCounter.resetApiCount();
                    loadingCtrl.hideLoading();
                    chainFlag = false;
                    return Future.error({
                        "code": e.response == null ? 9999 : (e.response.statusCode == null ? 9999 : e.response.statusCode),
                        "msg": e.message
                    });
                } else {
                    return Future.error({
                        "code": e.response == null ? 9999 : (e.response.statusCode == null ? 9999 : e.response.statusCode),
                        "msg": e.message
                    });
                }
            } else {
                exceptionCtrl.showException();
            }
            return Future.error({
                "code": e.response == null ? 9999 : (e.response.statusCode == null ? 9999 : e.response.statusCode),
                "msg": e.message
            });
        });
    }
}
