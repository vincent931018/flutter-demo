/*
 * Created by caowencheng on 2019-07-05
 * @Email 845982120@qq.com
 * @Website https://www.caowencheng.com
 */

import 'package:flutter/material.dart';
import 'package:flutter_app/components/display/showToast.dart';

class CommonUtils {

    /*
     * 展示toast
     */
    static void showToast(BuildContext context, String message) {
        Toast.show(context, message);
    }

}