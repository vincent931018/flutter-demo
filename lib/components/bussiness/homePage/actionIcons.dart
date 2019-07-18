/*
 * @Author: caowencheng
 * @GitHub: https://github.com/cwc845982120
 * @Description: 首页 各服务按钮
 * @Date: 2019-07-15
 */

import 'package:flutter/material.dart';
import 'package:flutter_app/assets/icons.dart';
import 'package:flutter_app/utils/colorUtils.dart';
import 'package:flutter_app/utils/routerUtils.dart';

class ActionIcons extends StatefulWidget {
    @override
    State createState() => new _ActionIconsState();
}

TextStyle textStyle = TextStyle(
    color: Color(ColorUtils.fromHexString("#4A4A4A")),
    fontSize: 12,
);

class _ActionIconsState extends State<ActionIcons> {
    @override
    Widget build(BuildContext context) {
        return new Container(
            padding: EdgeInsets.fromLTRB(24, 15, 24, 10),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: Color(ColorUtils.fromHexString("#E1E1E1")),
                        width: 0.5
                    )
                )
            ),
            child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                    new Column(
                        children: <Widget>[
                            new Container(
                                width: 44,
                                height: 44,
                                alignment: new Alignment(0.5, 0.5),
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(44),
                                    color: Color(ColorUtils.fromHexString("#00C3AA"))
                                ),
                                child: new IconButton(
                                    icon: new Icon(
                                        IconsLibrary.icon_search,
                                        color: Color(ColorUtils.fromHexString("#ffffff")),
                                    ),
                                    onPressed: () {
                                        print("团课");
                                        RouterUtils.push(context, Routes.detailPage, params: {
                                            "name": "cwc"
                                        });
                                    }),
                            ),
                            new Text(
                                "团课",
                                style: textStyle,
                            )
                        ],
                    ),
                    new Column(
                        children: <Widget>[
                            new Container(
                                width: 44,
                                height: 44,
                                alignment: new Alignment(0.5, 0.5),
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(44),
                                    color: Color(ColorUtils.fromHexString("#00C3AA"))
                                ),
                                child: new IconButton(
                                    icon: new Icon(
                                        IconsLibrary.icon_search,
                                        color: Color(ColorUtils.fromHexString("#ffffff")),
                                    ),
                                    onPressed: () {
                                        print("私教");
                                    }),
                            ),
                            new Text(
                                "私教",
                                style: textStyle,
                            )
                        ],
                    ),
                    new Column(
                        children: <Widget>[
                            new Container(
                                width: 44,
                                height: 44,
                                alignment: new Alignment(0.5, 0.5),
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(44),
                                    color: Color(ColorUtils.fromHexString("#00C3AA"))
                                ),
                                child: new IconButton(
                                    icon: new Icon(
                                        IconsLibrary.icon_search,
                                        color: Color(ColorUtils.fromHexString("#ffffff")),
                                    ),
                                    onPressed: () {
                                        print("医健");
                                    }),
                            ),
                            new Text(
                                "医健",
                                style: textStyle,
                            )
                        ],
                    ),
                    new Column(
                        children: <Widget>[
                            new Container(
                                width: 44,
                                height: 44,
                                alignment: new Alignment(0.5, 0.5),
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(44),
                                    color: Color(ColorUtils.fromHexString("#00C3AA"))
                                ),
                                child: new IconButton(
                                    icon: new Icon(
                                        IconsLibrary.icon_search,
                                        color: Color(ColorUtils.fromHexString("#ffffff")),
                                    ),
                                    onPressed: () {
                                        print("套课");
                                    }),
                            ),
                            new Text(
                                "套课",
                                style: textStyle,
                            )
                        ],
                    ),
                    new Column(
                        children: <Widget>[
                            new Container(
                                width: 44,
                                height: 44,
                                alignment: new Alignment(0.5, 0.5),
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(44),
                                    color: Color(ColorUtils.fromHexString("#00C3AA"))
                                ),
                                child: new IconButton(
                                    icon: new Icon(
                                        IconsLibrary.icon_search,
                                        color: Color(ColorUtils.fromHexString("#ffffff")),
                                    ),
                                    onPressed: () {
                                        print("懒餐");
                                    }),
                            ),
                            new Text(
                                "懒餐",
                                style: textStyle,
                            )
                        ],
                    ),
                ],
            ),
        );
    }
}
