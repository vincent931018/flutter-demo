/*
 * Created by caowencheng on 2019-07-05
 * @Email 845982120@qq.com
 * @Website https://www.caowencheng.com
 */

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_app/utils/colorUtils.dart';

class CommonUtils {

    /*
     * 展示toast
     */
    static void showToast(String message, { int duration = 2000 }) {
        Fluttertoast.showToast(
            msg: message,
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIos: 2,
            backgroundColor: Color.fromRGBO(0, 0, 0, 0.7),
            textColor: Color(ColorUtils.fromHexString("#ffffff"))
        );
    }

}