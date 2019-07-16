/*
 * @Author: caowencheng
 * @GitHub: https://github.com/cwc845982120
 * @Description: 
 * @Date: 2019-07-15
 */

import 'package:flutter/material.dart';
import 'package:flutter_app/components/bussiness/common/coachCard.dart';
import 'package:flutter_app/utils/colorUtils.dart';

class Recommend extends StatefulWidget {
    @override
    State createState() => new _RecommendState();
}

class _RecommendState extends State<Recommend> {

    double getStatusBarHeight(BuildContext context) {
        return MediaQuery.of(context).padding.top;
    }

    @override
    Widget build(BuildContext context) {
        return new Container(
            padding: EdgeInsets.all(16),
            child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                    new Container(
                        child: new Text(
                            "为你精选",
                            style: TextStyle(
                                color: Color(ColorUtils.fromHexString("#303030")),
                                fontSize: 18,
                                fontWeight: FontWeight.w700),
                        ),
                    ),
                    new Container(
                        child: new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                                new Container(
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
                                                                topLeft: Radius.circular(4),
                                                                topRight: Radius.circular(4)),
                                                        ),
                                                    ),
                                                    new Container(
                                                        child: new Row(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment.spaceBetween,
                                                            children: <Widget>[
                                                                new Column(
                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                    children: <Widget>[
                                                                        new Container(
                                                                            child: new Text(
                                                                                "BODYJAM燃脂热舞(45分钟)",
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
                                                                                "傅森泉",
                                                                                style: TextStyle(
                                                                                    color: Color(ColorUtils.fromHexString("#909090")),
                                                                                    fontSize: 14
                                                                                ),
                                                                            ),
                                                                            margin: EdgeInsets.only(
                                                                                top: 8
                                                                            ),
                                                                        )
                                                                    ],
                                                                ),
                                                                new Column(
                                                                    crossAxisAlignment: CrossAxisAlignment.end,
                                                                    children: <Widget>[
                                                                        new Container(
                                                                            child: new Column(
                                                                                children: <Widget>[
                                                                                    new Container(
                                                                                        child: new Text(
                                                                                            "试试团课",
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
                                                                                    new Container(
                                                                                        child: new Text(
                                                                                            "￥39",
                                                                                            style: TextStyle(
                                                                                                color: Color(ColorUtils.fromHexString("#00C3AA")),
                                                                                                fontSize: 16,
                                                                                                fontWeight: FontWeight.w700
                                                                                            ),
                                                                                        ),
                                                                                        padding: EdgeInsets.only(
                                                                                            top: 8
                                                                                        ),
                                                                                    )
                                                                                ],
                                                                            ))
                                                                    ],
                                                                )
                                                            ],
                                                        ),
                                                        decoration: BoxDecoration(
                                                            color: Color(
                                                                ColorUtils.fromHexString("#ffffff")),
                                                            borderRadius: BorderRadius.only(
                                                                bottomRight: Radius.circular(4),
                                                                bottomLeft: Radius.circular(4))),
                                                        width: MediaQuery.of(context).size.width - 32,
                                                        padding: EdgeInsets.all(10),
                                                    )
                                                ],
                                            ),
                                            new Positioned(
                                                child: new Container(
                                                    child: new Text(
                                                        "07:00-07:40",
                                                        style: TextStyle(
                                                            color: Color(
                                                                ColorUtils.fromHexString("#ffffff")),
                                                            fontSize: 10),
                                                    ),
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.only(
                                                            topLeft: Radius.circular(4),
                                                            bottomRight: Radius.circular(10)),
                                                        color: Color(ColorUtils.fromHexString("#5BBDDE")),
                                                    ),
                                                    padding: EdgeInsets.only(
                                                        top: 5, bottom: 5, left: 10, right: 10),
                                                ),
                                                top: 0,
                                                left: 0,
                                            ),
                                        ],
                                    )
                                ),
                            ],
                        ),
                        margin: EdgeInsets.only(top: 14),
                    ),
                    new Container(
                        child: new CoachCard(),
                        margin: EdgeInsets.only(
                            top: 15
                        ),
                    )
                ],
            ),
        );
    }
}
