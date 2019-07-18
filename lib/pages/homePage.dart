/*
 * @Author: caowencheng
 * @GitHub: https://github.com/cwc845982120
 * @Description: 首页
 * @Date: 2019-07-16
 */

import 'package:flutter/material.dart';
import 'package:flutter_app/components/bussiness/homePage/actionIcons.dart';
import 'package:flutter_app/components/bussiness/homePage/banner.dart';
import 'package:flutter_app/components/bussiness/homePage/nearby.dart';
import 'package:flutter_app/components/bussiness/homePage/recommend.dart';
import 'package:flutter_app/utils/commonUtils.dart';
import 'package:flutter_app/components/display/navigationHeader.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return new Column(
        children: <Widget>[
            new NavigationHeader("懒人易健"),
            Expanded(
                child: RefreshIndicator(
                    child: new SingleChildScrollView(
                        child: new Container(
                            width: MediaQuery.of(context).size.width,
                            child: new Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                    new HomeBanner(),
                                    new ActionIcons(),
                                    new Nearby(),
                                    new Recommend()
                                ]),
                        )),
                    onRefresh: _onRefresh
                ),
            )
        ],
    );
  }

  // 下拉刷新
  Future<Null> _onRefresh() async {
    await Future.delayed(Duration(seconds: 3), () {
      CommonUtils.showToast("刷新成功");
    });
  }
}
