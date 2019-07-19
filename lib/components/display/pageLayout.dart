/*
 * @Author: caowencheng
 * @GitHub: https://github.com/cwc845982120
 * @Description: 通用页面布局
 * @Date: 2019-07-19
 */

import 'package:flutter/material.dart';
import 'package:flutter_app/utils/screenUtils.dart';
import 'package:flutter_app/components/display/navigationHeader.dart';

class PageLayout extends StatefulWidget {

    const PageLayout({
        Key key,
        @required this.title,
        @required this.child,
        this.navigationLeftIconActions,
        this.navigationRightIconActions

    }) : super(key: key);

    /// 页面标题
    final String title;

    /// 页面主节点
    final Widget child;

    /// 导航条左边部分操作
    final List<GestureDetector> navigationLeftIconActions;

    /// 导航条右边部分操作
    final List<GestureDetector> navigationRightIconActions;

    @override
    _PageLayoutState createState() => _PageLayoutState();
}

class _PageLayoutState extends State<PageLayout> {
    @override
    void initState() {
        super.initState();
    }

    @override
    void dispose() {
        super.dispose();
    }

    @override
    Widget build(BuildContext context) {
        return new Material(
            child: new Column(
                children: <Widget>[
                    new NavigationHeader(
                        title: widget.title ?? "页面标题",
                        navigationLeftIconActions: widget.navigationLeftIconActions,
                        navigationRightIconActions: widget.navigationRightIconActions,
                    ),
                    Expanded(
                        child: new Container(
                            child:  widget.child ?? new Container(),
                            width: ScreenUtils.getScreenW(context),
                        ),
                    )
                ],
            ),
        );
    }
}