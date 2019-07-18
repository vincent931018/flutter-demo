/*
 * @Author: caowencheng
 * @GitHub: https://github.com/cwc845982120
 * @Description: httpClient loading控制器
 * @Date: 2019-07-16
 */


import 'package:flutter_app/utils/commonUtils.dart';

class LoadingCtrl {

    showLoading() {
        CommonUtils.showLoading(mask: true);
    }

    hideLoading() {
        CommonUtils.hideLoading();
    }
}
