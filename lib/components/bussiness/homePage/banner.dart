/*
 * @Author: caowencheng
 * @GitHub: https://github.com/cwc845982120
 * @Description: 首页banner展示
 * @Date: 2019-07-15
 */

import 'package:flutter/material.dart';

class HomeBanner extends StatefulWidget {
    @override
    State createState() => new _HomeBannerState();
}

class _HomeBannerState extends State<HomeBanner> {
    @override
    Widget build(BuildContext context) {
        return new Image.network(
            "https://portal.lanrenyun.cn/1561949318694",
            width: MediaQuery.of(context).size.width,
            height: 145,
            fit: BoxFit.fitWidth,
        );
    }
}