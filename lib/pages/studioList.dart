/*
 * @Author: caowencheng
 * @GitHub: https://github.com/cwc845982120
 * @Description: 俱乐部列表
 * @Date: 2019-07-16
 */

import 'package:flutter/material.dart';
import 'package:flutter_app/utils/commonUtils.dart';
import 'package:flutter_app/components/display/pageLayout.dart';
import 'package:flutter_app/components/bussiness/common/studioCard.dart';
import 'package:flutter_app/assets/icons.dart';

class StudioList extends StatefulWidget {

    StudioList({Map params}) : this.params = params;

    final Map params;

    @override
    State createState() => new _StudioListState();
}

class _StudioListState extends State<StudioList> {

    @override
    void initState() {
        super.initState();
    }

    @override
    Widget build(BuildContext context) {
        return new PageLayout(
            title: "福州",
            child: RefreshIndicator(
                child: new SingleChildScrollView(
                    child: new Container(
                        child: new Column(
                            children: <Widget>[
                                new Container(
                                    child: new StudioCard(),
                                    margin: EdgeInsets.only(
                                        bottom: 12
                                    ),
                                ),
                                new Container(
                                    child: new StudioCard(),
                                    margin: EdgeInsets.only(
                                        bottom: 12
                                    ),
                                ),
                                new Container(
                                    child: new StudioCard(),
                                    margin: EdgeInsets.only(
                                        bottom: 12
                                    ),
                                ),
                                new Container(
                                    child: new StudioCard(),
                                    margin: EdgeInsets.only(
                                        bottom: 12
                                    ),
                                ),
                            ],
                        ),
                        padding: EdgeInsets.all(16),
                    )
                ),
                onRefresh: _onRefresh,
            ),
            navigationLeftIconActions: <GestureDetector>[
                GestureDetector(
                    child: new Icon(
                        IconsLibrary.icon_extension,
                        color: Colors.white,
                        size: 18,
                    ),
                    onTap: () {
                        print("navigationLeftIconAction1");
                    },
                ),
            ],
            navigationRightIconActions: <GestureDetector>[
                GestureDetector(
                    child: new Icon(
                        IconsLibrary.icon_extension,
                        color: Colors.white,
                        size: 18,
                    ),
                    onTap: () {
                        print("navigationRightIconAction1");
                    },
                ),
                GestureDetector(
                    child: new Icon(
                        IconsLibrary.icon_left_arrow,
                        color: Colors.white,
                        size: 18,
                    ),
                    onTap: () {
                        print("navigationRightIconAction2");
                    },
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