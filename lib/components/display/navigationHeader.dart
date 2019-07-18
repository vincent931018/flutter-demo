/*
 * @Author: caowencheng
 * @GitHub: https://github.com/cwc845982120
 * @Description: 自定义导航栏
 * @Date: 2019-07-16
 */

import 'package:flutter/material.dart';
import 'package:flutter_app/utils/colorUtils.dart';
import 'package:flutter_app/assets/icons.dart';

class NavigationHeader extends  StatefulWidget {

    NavigationHeader(String title) : this.title = (title == null ? "页面标题" : title);

    final String title;

    double getStatusBarHeight(BuildContext context) {
        return MediaQuery.of(context).padding.top;
    }

    @override
    State<StatefulWidget> createState() => new _NavigationHeaderState();

}

class _NavigationHeaderState extends State<NavigationHeader> {

    // 是否展示导航返回按钮
    bool showNavigationBack;

    @override
    void initState() {
        showNavigationBack = Navigator.canPop(context);
        super.initState();
    }

    @override
    Widget build(BuildContext context) {
        return new Stack(
            children: <Widget>[
                new Container(
                    padding: EdgeInsets.only(
                        top: widget.getStatusBarHeight(context),
                        left: 16,
                        right: 16
                    ),
                    child: new Text(
                        widget.title,
                        style: TextStyle(
                            color: Color(ColorUtils.fromHexString("#ffffff")),
                            fontSize: 17,
                            fontWeight: FontWeight.w700
                        ),
                    ),
                    height: widget.getStatusBarHeight(context) + 44,
                    width: MediaQuery.of(context).size.width,
                    color: Color(ColorUtils.fromHexString("#00C3AA")),
                    alignment: Alignment(0, 0),
                ),
                new Positioned(
                    child: new Container(
                        padding: EdgeInsets.only(
                            left: 16,
                            right: 16
                        ),
                        color: Colors.white.withOpacity(0),
                        height: 44,
                        width: MediaQuery.of(context).size.width,
                        child: new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                                (showNavigationBack ? new IconButton(
                                    icon: new Icon(
                                        IconsLibrary.icon_extension,
                                        color: Colors.white,
                                        size: 18,
                                    ),
                                    onPressed: () {
                                        Navigator.pop(context);
                                    }
                                ) : new Text("")),
                                new Text(""),
                            ],
                        ),
                    ),
                    top: widget.getStatusBarHeight(context),
                    left: 0,
                )
            ],
        );
    }

}