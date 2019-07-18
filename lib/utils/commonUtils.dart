/*
 * @Author: caowencheng
 * @GitHub: https://github.com/cwc845982120
 * @Description: 公共方法 工具函数
 * @Date: 2019-07-16
 */

import 'package:flutter_app/components/display/globalContext.dart';

class CommonUtils {

    /*
     * 展示toast
     */
    static void showToast(String message, { bool mask = false }) {
        globalShowToast(message, mask);
    }

    /*
     * 展示loading
     */
    static void showLoading({ bool mask = false }) {
        globalShowLoading(mask);
    }

    /*
     * 隐藏loading
     */
    static void hideLoading() {
        globalHideLoading();
    }

}