/*
 * @Author: caowencheng
 * @GitHub: https://github.com/cwc845982120
 * @Description: 教练卡片展示（首页）
 * @Date: 2019-07-16
 */

import 'package:flutter/material.dart';
import 'package:flutter_app/utils/colorUtils.dart';

class CoachCard extends StatelessWidget {
    Widget build(BuildContext context) {
        return new Container(
            child: new Stack(
                children: <Widget>[
                    new Row(
                        children: <Widget>[
                            new Container(
                                child: new ClipRRect(
                                    child: new Image.network(
                                        "https://qiniuts.lanrenyun.cn/1H5A3733.jpg",
                                        fit: BoxFit.cover,
                                        width: 70,
                                        height: 70,
                                    ),
                                    borderRadius: BorderRadius.circular(35),
                                ),
                                margin: EdgeInsets.only(
                                    right: 11
                                ),
                            ),
                            new Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                    new Text(
                                        "夏凡",
                                        style: TextStyle(
                                            color: Color(ColorUtils.fromHexString("#303030")),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700
                                        ),
                                    ),
                                    new Container(
                                        child: new Row(
                                            children: <Widget>[
                                                new Text(
                                                    "5.0分",
                                                    style: TextStyle(
                                                        color: Color(ColorUtils.fromHexString("#3A444A")),
                                                        fontSize: 12,
                                                    )
                                                ),
                                                new Container(
                                                    child: new Text(
                                                        "1030单",
                                                        style: TextStyle(
                                                            color: Color(ColorUtils.fromHexString("#3A444A")),
                                                            fontSize: 12,
                                                        )
                                                    ),
                                                    margin: EdgeInsets.only(
                                                        left: 10,
                                                        right: 10
                                                    ),
                                                ),
                                                new Text(
                                                    "今日可约",
                                                    style: TextStyle(
                                                        color: Color(ColorUtils.fromHexString("#3A444A")),
                                                        fontSize: 12,
                                                    )
                                                )
                                            ],
                                        ),
                                        margin: EdgeInsets.only(
                                            top: 9,
                                            bottom: 6
                                        ),
                                    ),
                                    new Text(
                                        "专注产后恢复20年，经验丰富。",
                                        style: TextStyle(
                                            color: Color(ColorUtils.fromHexString("#909090")),
                                            fontSize: 12,
                                        )
                                    )
                                ],
                            )
                        ],
                    ),
                    new Positioned(
                        child: new Container(
                            child: new Text(
                                "热门教练",
                                style: TextStyle(
                                    color: Color(ColorUtils.fromHexString("#F05522")),
                                    fontSize: 11,
                                ),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Color.fromRGBO(240, 85, 34, 0.1)
                            ),
                            padding: EdgeInsets.all(5),
                        ),
                        top: 0,
                        right: 0,
                    )
                ],
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Color(ColorUtils.fromHexString("#ffffff")),
                boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.1),
                        blurRadius: 8.0,
                    )
                ]
            ),
            width: MediaQuery.of(context).size.width - 32,
            padding: EdgeInsets.only(
                top: 18,
                bottom: 18,
                left: 16,
                right: 16
            ),
        );
    }
}