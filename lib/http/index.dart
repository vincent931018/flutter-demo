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

// 系统默认请求配置
Map defaultOptions = {
    "showLoading": true, // 接口是否显示loading
    "delay": 0, // 接口延迟调用
    "version": 2, // 接口版本
    "headers": {
        'content-type': 'application/json;charset=UTF-8',
    }, // 自定义请求头
    "chainStart": false, // 链式调用开头
    "chainFinish": false, // 链式调用结尾
    "chainReject": false, // 链式调用是否取消下传
    "effectMainProcess": false // 是否关键请求 异常跳错误页
};

class HttpClient {

    /*
    post 请求
     */
    static Future post (String url, Object params, {Map customOptions}) async {
        Map httpOptions = {};
        httpOptions.addAll(defaultOptions);
        if (customOptions != null) {
            httpOptions.addAll(customOptions);
        }
        if (httpOptions["chainReject"]) {
            apiCounter.resetApiCount();
            loadingCtrl.hideLoading();
            return Future.error({
                "code": 9999,
                "msg": "链式请求中断"
            });
        }
        if (httpOptions["showLoading"]) {
            if (apiCounter.getApiCount() == 0) {
                loadingCtrl.showLoading();
            }
            if (httpOptions["chainStart"]) {
                apiCounter.increase();
                chainFlag = true;
            }
            apiCounter.increase();
        }
        return await httpCoreFun(url, params, httpOptions).then((res) {
            if (httpOptions["showLoading"]) {
                if (httpOptions["chainFinish"]) {
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
            if (httpOptions["showLoading"]) {
                if (httpOptions["chainFinish"]) {
                    apiCounter.decrease();
					chainFlag = false;
                }
                apiCounter.decrease();
                if (apiCounter.getApiCount() == 0) {
                    loadingCtrl.hideLoading();
                }
            }
            return Future.error({
                "code": 9999,
                "msg": "请求异常"
            });
        }).catchError((e) {
            if (httpOptions["chainReject"]) {
                return Future.error({
                    "code": 9999,
                    "msg": "链式请求中断"
                });
            }
            if (!httpOptions["effectMainProcess"]) {
                if (chainFlag) {
                    apiCounter.resetApiCount();
                    loadingCtrl.hideLoading();
                    chainFlag = false;
                    return Future.error({
                        "code": 9999,
                        "msg": "链式请求异常"
                    });
                } else {
                    return Future.error({
                        "code": 9999,
                        "msg": "请求异常"
                    });
                }
            } else {
                exceptionCtrl.showException();
            }
            return Future.error({
                "code": 9999,
                "msg": "请求异常"
            });
        });
    }
}
