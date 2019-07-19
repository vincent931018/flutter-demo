/*
 * @Author: caowencheng
 * @GitHub: https://github.com/cwc845982120
 * @Description: 我的
 * @Date: 2019-07-16
 */

import 'package:flutter/material.dart';
import 'package:flutter_app/components/display/pageLayout.dart';

class MyPage extends StatefulWidget {
    @override
    _MyPageState createState() => new _MyPageState();
}

class _MyPageState extends State<MyPage> with AutomaticKeepAliveClientMixin{

    @override
    bool get wantKeepAlive => true;

    @override
    Widget build(BuildContext context) {
        super.build(context);
        return new PageLayout(
            title: "我的",
            child: new Text("我的")
        );
    }

}