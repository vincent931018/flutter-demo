/*
 * @Author: caowencheng
 * @GitHub: https://github.com/cwc845982120
 * @Description: 自定义导航栏
 * @Date: 2019-07-16
 */

import 'package:flutter/material.dart';
import 'package:flutter_app/utils/colorUtils.dart';
import 'package:flutter_app/utils/screenUtils.dart';
import 'package:flutter_app/assets/icons.dart';

class NavigationHeader extends  StatefulWidget {

    NavigationHeader(String title) : this.title = (title == null ? "页面标题" : title);

    final String title;

    @override
    State<StatefulWidget> createState() => new _NavigationHeaderState();

}

class _NavigationHeaderState extends State<NavigationHeader> {
    
    // 导航栏高度
    double navigationHeight = 44.0;

    // 是否展示导航返回按钮
    bool _showNavigationBack;

    @override
    void initState() {
        _showNavigationBack = Navigator.canPop(context);
        super.initState();
    }

    @override
    Widget build(BuildContext context) {
        return new Stack(
            children: <Widget>[
                new Container(
                    padding: EdgeInsets.only(
                        top: ScreenUtils.getStatusBarH(context),
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
                    height: ScreenUtils.getStatusBarH(context) + navigationHeight,
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
                        height: navigationHeight,
                        width: MediaQuery.of(context).size.width,
                        child: new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                                (_showNavigationBack ? new IconButton(
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
                    top: ScreenUtils.getStatusBarH(context),
                    left: 0,
                )
            ],
        );
    }

}