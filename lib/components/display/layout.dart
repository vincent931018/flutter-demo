/*
 * Created by caowencheng on 2019-07-04
 * @Email 845982120@qq.com
 * @Website https://www.caowencheng.com
 */
import 'package:flutter/material.dart';

import '../../assets/colors.dart';
import '../../components/display/tabBar.dart';
import '../../utils/colorUtils.dart';

class Layout extends StatefulWidget {
    Layout({
        bool showAppBar = true,
        bool showBottomBar = false,
        Widget child,
        String title = "首页",
        String appBarBackgroundColor = ColorsLibrary.themeColor,
    })  : this.showAppBar = showAppBar,
            this.showBottomBar = showBottomBar,
            this.child = child,
            this.title = title,
            this.appBarBackgroundColor = appBarBackgroundColor;

    final bool showAppBar;

    final bool showBottomBar;

    final Widget child;

    final String title;

    final String appBarBackgroundColor;

    @override
    _LayoutState createState() => new _LayoutState(
        showAppBar, showBottomBar, child, title, appBarBackgroundColor);
}

class _LayoutState extends State<Layout> {
    _LayoutState(bool showAppBar, bool showBottomBar, Widget child, String title,
        String appBarBackgroundColor) {
        this._showAppBar = showAppBar;
        this._showBottomBar = showBottomBar;
        this._child = child;
        this._title = title;
        this._appBarBackgroundColor = appBarBackgroundColor;
    }

    /*
    是否展示顶部导航栏
     */
    bool _showAppBar;

    /*
    是否展示底部导航栏部分
     */
    bool _showBottomBar;

    /*
    内容部分
     */
    Widget _child;

    /*
    页面标题
     */
    String _title;

    /*
    导航栏颜色
     */
    String _appBarBackgroundColor;

    num _currentPageIndex = 0;

    var _pageController = new PageController(initialPage: 0);

    @override
    Widget build(BuildContext context) {
        return new Scaffold(
            appBar: _showAppBar ? AppBar(
                title: new Text(_title),
                backgroundColor: Color(ColorUtils.fromHexString(_appBarBackgroundColor)),
                centerTitle: true,
            ) : null,
//            body: _child == null ? new Material() : _child,
            body: new PageView.builder(
                physics: NeverScrollableScrollPhysics(),
                onPageChanged: _pageChange,
                controller: _pageController,
                itemBuilder: (BuildContext context, int index) {
                    if (index == 0) {
                        return _child == null ? new Material() : _child;
                    } else if (index == 1) {
                        return new Text("我是第二页");
                    } else {
                        return new Text("我是第三页");
                    }
                },
                itemCount: 3,
            ),
            bottomNavigationBar:
            _showBottomBar ? new CustomTabBar(_pageController) : null,
        );
    }

    /*
    tabBar 页面切换
     */
    void _pageChange(int index) {
        setState(() {
            if (index == 0) {
                _title = "首页";
            } else if (index == 1) {
                _title = "课程";
            } else if (index == 2) {
                _title = "我的";
            }
            if (_currentPageIndex != index) {
                _currentPageIndex = index;
            }
        });
    }
}
