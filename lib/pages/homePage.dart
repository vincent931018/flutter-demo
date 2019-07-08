/*
 * Created by caowencheng on 2019-07-05
 * @Email 845982120@qq.com
 * @Website https://www.caowencheng.com
 */

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_app/actions/homePage/operationAction.dart';
import 'package:flutter_app/utils/routerUtils.dart';
import 'package:flutter_app/utils/colorUtils.dart';
import 'package:flutter_app/assets/colors.dart';
import 'package:flutter_app/assets/images.dart';
import 'package:flutter_app/assets/icons.dart';

class HomePage extends StatefulWidget {
    @override
    State createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {

    @override
    Widget build(BuildContext context) {
        return new Material(
            child: new Scaffold(
                appBar: AppBar(
                    title: new Text("首页"),
                    backgroundColor: Color(ColorUtils.fromHexString(ColorsLibrary.themeColor)),
                    actions: <Widget>[
                        new IconButton(
                            icon: new Icon(IconsLibrary.icon_camera),
                            onPressed: () {
                                print("rightBtn");
                            }
                        )
                    ],
                ),
                body: new Container(
                    width: MediaQuery.of(context).size.width,
                    child: new Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                            new Image.network(
                                "https://segmentfault.com/img/bVbubxL?w=1000&h=1000",
                                width: 300,
                                height: 100,
                                fit: BoxFit.contain,
                            ),
                            new FlatButton(
                                onPressed: () {
                                    _toDetail(context);
                                },
                                child: new Image.asset(
                                    ImagesLibrary.testPicture,
                                    width: 200,
                                    height: 200,
                                    fit: BoxFit.contain,
                                ),
                            ),
                            new StoreConnector(
                                converter: (store) => store.state.homePageState.counter.toString(),
                                builder: (context, count) {
                                    return new Text(
                                        count,
                                        style: Theme.of(context).textTheme.display1,
                                    );
                                }),
                            new StoreConnector(
                                converter: (store) {
                                    // Return a `VoidCallback`, which is a fancy name for a function
                                    // with no parameters. It only dispatches an Increment action.
                                    return () => store.dispatch(OperationAction(OperationActionTypes.increase));
                                },
                                builder: (context, callback) {
                                    return new RaisedButton(
                                        child: new Text("+"),
                                        // Attach the `callback` to the `onPressed` attribute
                                        onPressed: callback,
                                    );
                                },
                            ),
                        ]
                    ),
                )
            )
        );
    }

    void _toDetail(BuildContext context) {
        RouterUtils.push(context, Routes.detailPage, params: {
            "name": "334"
        });
    }
}