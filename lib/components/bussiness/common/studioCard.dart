/*
 * @Author: caowencheng
 * @GitHub: https://github.com/cwc845982120
 * @Description: 俱乐部卡片
 * @Date: 2019-07-19
 */

import 'package:flutter/material.dart';
import 'package:flutter_app/utils/colorUtils.dart';
import 'package:flutter_app/assets/icons.dart';

class StudioCard extends StatelessWidget {

    @override
    Widget build(BuildContext context) {
        return GestureDetector(
            onTap: () {
                print("去俱乐部详情");
            },
            child: new Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Color(ColorUtils.fromHexString("#ccc")),
                    boxShadow: [
                        BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.1),
                            blurRadius: 8.0,
                        )
                    ]),
                child: new Stack(
                    children: <Widget>[
                        new Column(
                            children: <Widget>[
                                new Container(
                                    child: new ClipRRect(
                                        child: new Image.network(
                                            "https://qiniuts.lanrenyun.cn/1H5A3733.jpg",
                                            fit: BoxFit.cover,
                                            width: MediaQuery.of(context).size.width - 32,
                                            height: 135,
                                        ),
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(8),
                                            topRight: Radius.circular(8)),
                                    ),
                                ),
                                new Stack(
                                    children: <Widget>[
                                        new Container(
                                            child: new Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                    new Container(
                                                        child: new Text(
                                                            "三迪中心店",
                                                            style: TextStyle(
                                                                fontSize: 16,
                                                                color: Color(ColorUtils.fromHexString("#303030")),
                                                                fontWeight: FontWeight.w600,
                                                            ),
                                                            overflow: TextOverflow.ellipsis,
                                                        ),
                                                        width: 250,
                                                    ),
                                                    new Container(
                                                        child: new Text(
                                                            "福建省福州市台江区江滨西大道三迪联邦中心负一楼大道三迪联邦中心负一楼",
                                                            style: TextStyle(
                                                                color: Color(ColorUtils.fromHexString("#909090")),
                                                                fontSize: 14,
                                                            ),
                                                        ),
                                                        margin: EdgeInsets.only(
                                                            top: 8
                                                        ),
                                                    )
                                                ],
                                            ),
                                            decoration: BoxDecoration(
                                                color: Color(
                                                    ColorUtils.fromHexString("#ffffff")),
                                                borderRadius: BorderRadius.only(
                                                    bottomRight: Radius.circular(8),
                                                    bottomLeft: Radius.circular(8))),
                                            width: MediaQuery.of(context).size.width - 32,
                                            padding: EdgeInsets.all(10),
                                        ),
                                        new Positioned(
                                            child: new Row(
                                                children: <Widget>[
                                                    new Baseline(
                                                        baseline: 4,
                                                        baselineType: TextBaseline.alphabetic,
                                                        child: new Icon(
                                                            IconsLibrary.icon_add,
                                                            size: 10,
                                                            color: Color(ColorUtils.fromHexString("#78A1BF")),
                                                        ),
                                                    ),
                                                    new Baseline(
                                                        baseline: 9,
                                                        baselineType: TextBaseline.alphabetic,
                                                        child: new Container(
                                                            child: new Text(
                                                                "500m",
                                                                style: TextStyle(
                                                                    fontSize: 13,
                                                                    color: Color(ColorUtils.fromHexString("#78A1BF")),
                                                                    textBaseline: TextBaseline.alphabetic
                                                                ),
                                                            ),
                                                            margin: EdgeInsets.only(
                                                                left: 6
                                                            ),
                                                        ),
                                                    )
                                                ],
                                            ),
                                            top: 15,
                                            right: 15,
                                        )
                                    ],
                                )
                            ],
                        )
                    ],
                ),
            ),
        );
    }
}
