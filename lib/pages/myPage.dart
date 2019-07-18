/*
 * @Author: caowencheng
 * @GitHub: https://github.com/cwc845982120
 * @Description: 我的
 * @Date: 2019-07-16
 */

import 'package:flutter/material.dart';
import 'package:flutter_app/components/display/navigationHeader.dart';

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
        return new Material(
            child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                    new NavigationHeader("我的"),
                    new Text("我的")
                ],
            ),
        );
    }

}