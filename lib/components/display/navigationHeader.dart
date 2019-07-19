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

    const NavigationHeader({
        Key key,
        @required this.title,
        this.navigationLeftIconActions,
        this.navigationRightIconActions,
    }) : super(key: key);

    final String title;

    /// 导航条左边部分操作
    final List<GestureDetector> navigationLeftIconActions;

    /// 导航条右边部分操作
    final List<GestureDetector> navigationRightIconActions;

    @override
    State<StatefulWidget> createState() => new _NavigationHeaderState();

}

class _NavigationHeaderState extends State<NavigationHeader> {
    
    // 导航栏高度
    double navigationHeight = 44.0;

    /// 导航条左边部分操作
    List<Container> _navigationLeftIconActions;

    /// 导航条右边部分操作
    List<Container> _navigationRightIconActions;

    @override
    void initState() {
        _navigationLeftIconActions = (widget.navigationLeftIconActions ?? []).map(
                (w) => new Container(
                    child: w,
                    margin: EdgeInsets.only(
                        right: 16
                    ),
                )
        ).toList();
        _navigationRightIconActions = (widget.navigationRightIconActions ?? []).map(
                (w) => new Container(
                child: w,
                margin: EdgeInsets.only(
                    left: 16
                ),
            )
        ).toList();
        // 如果页面可以返回 从list头部插入 返回按钮
        if(Navigator.canPop(context)) {
            _navigationLeftIconActions.insert(0, new Container(
                child: GestureDetector(
                    child: new Icon(
                        IconsLibrary.icon_extension,
                        color: Colors.white,
                        size: 18,
                    ),
                    onTap: () {
                        Navigator.pop(context);
                    },
                ),
                margin: EdgeInsets.only(
                    right: 16
                ),
            ));
        }
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
                        color: Colors.white.withOpacity(0.0),
                        height: navigationHeight,
                        width: MediaQuery.of(context).size.width - 32,
                        child: new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                                new Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children:  _navigationLeftIconActions,
                                ),
                                new Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: _navigationRightIconActions,
                                ),
                            ],
                        ),
                    ),
                    top: ScreenUtils.getStatusBarH(context),
                    left: 16,
                )
            ],
        );
    }

}