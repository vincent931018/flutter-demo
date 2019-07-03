/*
 * Created by caowencheng on 2019-07-03
 * @Email 845982120@qq.com
 * @Website https://www.caowencheng.com
 */
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class RouterUtils {

    static Router router;

    static Future navigateTo(BuildContext context, String path) async {
        return router.navigateTo(context, path, transition: TransitionType.native);
    }

}