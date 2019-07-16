/*
 * @Author: caowencheng
 * @GitHub: https://github.com/cwc845982120
 * @Description: 首页 附近门店
 * @Date: 2019-07-15
 */

import 'package:flutter/material.dart';
import 'package:flutter_app/utils/colorUtils.dart';
import 'package:flutter_app/utils/routerUtils.dart';
import 'package:flutter_app/assets/icons.dart';

class Nearby extends StatefulWidget {
    @override
    State createState() => new _NearbyState();
}

class _NearbyState extends State<Nearby> {
    @override
    Widget build(BuildContext context) {
        return new Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        width: 0.5,
                        color: Color(ColorUtils.fromHexString("#E1E1E1"))
                    )
                )
            ),
            child: new Column(
                children: <Widget>[
                    new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                            new Text(
                                "附近的店",
                                style: TextStyle(
                                    color: Color(ColorUtils.fromHexString("#303030")),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700
                                ),
                            ),
                            GestureDetector(
                                child: new Row(
                                    children: <Widget>[
                                        new Padding(
                                            padding: EdgeInsets.fromLTRB(0, 0, 8, 0),
                                            child: new Text(
                                                "全部",
                                                style: TextStyle(
                                                    color: Color(ColorUtils.fromHexString("#B6B7B7")),
                                                    fontSize: 13,
                                                ),
                                            ),
                                        ),
                                        new Icon(
                                            IconsLibrary.icon_left_arrow,
                                            color: Color(ColorUtils.fromHexString("#B6B7B7")),
                                            size: 13,
                                        )
                                    ],
                                ),
                                onTap: () {
                                    RouterUtils.push(context, Routes.studioList, params: {
                                        "studioId": 1
                                    });
                                },
                            ),
                        ],
                    ),
                    new Container(
                        child: new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                                new Container(
                                    child: new Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                            new ClipRRect(
                                                child: new Image.network(
                                                    "https://qiniuts.lanrenyun.cn/1H5A3733.jpg",
                                                    fit: BoxFit.cover,
                                                ),
                                                borderRadius: BorderRadius.circular(4),
                                            ),
                                            new Container(
                                                child: new Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: <Widget>[
                                                        new Text(
                                                            "三迪中心店",
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                color: Color(ColorUtils.fromHexString("#303030"))
                                                            ),
                                                        ),
                                                        new Text(
                                                            "500m",
                                                            style: TextStyle(
                                                                fontSize: 13,
                                                                color: Color(ColorUtils.fromHexString("#B6B7B7"))
                                                            ),
                                                        )
                                                    ],
                                                ),
                                                margin: EdgeInsets.only(
                                                    top: 9
                                                ),
                                            )
                                        ],
                                    ),
                                    width: MediaQuery.of(context).size.width / 2 - 16 - 6,
                                ),
                                new Container(
                                    child: new Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                            new ClipRRect(
                                                child: new Image.network(
                                                    "https://qiniuts.lanrenyun.cn/1H5A3733.jpg",
                                                    fit: BoxFit.cover,
                                                ),
                                                borderRadius: BorderRadius.circular(4),
                                            ),
                                            new Container(
                                                child: new Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: <Widget>[
                                                        new Text(
                                                            "三迪中心店",
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                color: Color(ColorUtils.fromHexString("#303030"))
                                                            ),
                                                        ),
                                                        new Text(
                                                            "500m",
                                                            style: TextStyle(
                                                                fontSize: 13,
                                                                color: Color(ColorUtils.fromHexString("#B6B7B7"))
                                                            ),
                                                        )
                                                    ],
                                                ),
                                                margin: EdgeInsets.only(
                                                    top: 9
                                                ),
                                            )
                                        ],
                                    ),
                                    width: MediaQuery.of(context).size.width / 2 - 16 - 6,
                                ),
                            ],
                        ),
                        margin: EdgeInsets.only(
                            top: 12
                        ),
                    )
                ],
            ),
        );
    }
}

