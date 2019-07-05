import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_app/http/index.dart';
import 'package:flutter_app/actions/detailPage/operationAction.dart';
import 'package:flutter_app/utils/routerUtils.dart';
import 'package:flutter_app/utils/colorUtils.dart';
import 'package:flutter_app/utils/commonUtils.dart';
import 'package:flutter_app/assets/colors.dart';

class DetailPage extends StatefulWidget {

  	DetailPage({Map params}) : this.params = params;

  	final Map params;

  	@override
  	_DetailPageState createState() => new _DetailPageState(params);

}

class _DetailPageState extends State<DetailPage> {

  	_DetailPageState(Map params) {
    	this.name = params["name"];
  	}

  	String pageTitle = "详情";

  	String name;

  	String count = "1";

  	@override
  	Widget build(BuildContext context) {
    	return new Material(
        	child: new Scaffold(
                appBar: AppBar(
                    title: new Text("详情"),
                    backgroundColor: Color(ColorUtils.fromHexString(ColorsLibrary.themeColor)),
                ),
                body: new Container(
                    width: MediaQuery.of(context).size.width,
                    child: new Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                            new Text(name == null ? "xixi" : name),
                            new IconButton(
                                icon: new Icon(Icons.menu),
                                tooltip: 'Navigation menu',
                                onPressed: () {
                                    setState(() {
                                        name = "456";
                                    });
                                }, // null 会禁用 button
                            ),
                            new FlatButton(onPressed: () {
                                HttpClient.post("/home/queryHomePageInfo", {
                                    "uid": 1554194145097
                                }).then((res) {
                                    print("res:$res");
                                }).catchError((err) {
                                    print("err:$err");
                                });
                            }, child: new Text("接口请求")),
                            new StoreConnector(
                                converter: (store) => store.state.detailState.counter.toString(),
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
                                    return new FloatingActionButton(
                                        // Attach the `callback` to the `onPressed` attribute
                                        onPressed: callback,
                                        child: new Icon(Icons.add),
                                    );
                                },
                            ),
                            new FlatButton(
                                // Attach the `callback` to the `onPressed` attribute
                                onPressed: () {
                                    RouterUtils.pop(context, result: {"params": "123"});
                                },
                                child: new Icon(Icons.add),
                            ),
                            new Text(count),
                            new FlatButton(
                                // Attach the `callback` to the `onPressed` attribute
                                onPressed: () {
                                    setState(() {
                                        count = count + "1";
                                    });
                                },
                                child: new Icon(Icons.add),
                            ),
                            new FlatButton(
                                // Attach the `callback` to the `onPressed` attribute
                                onPressed: () {
                                    CommonUtils.showToast("???");
                                },
                                child: new Text("toast"),
                            ),
                        ]
                    ),
                ),
            )
    	);
  	}
}
