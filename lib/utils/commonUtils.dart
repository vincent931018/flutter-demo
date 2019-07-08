/*
 * Created by caowencheng on 2019-07-05
 * @Email 845982120@qq.com
 * @Website https://www.caowencheng.com
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