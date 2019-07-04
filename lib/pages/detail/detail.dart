import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import '../../http/index.dart';
import '../../components/display/layout.dart';
import '../../actions/detail/operationAction.dart';

class Detail extends StatefulWidget {

  	Detail(Map params) : this.params = params;

  	final Map params;

  	@override
  	_DetailState createState() => new _DetailState(params);

}

class _DetailState extends State<Detail> {

  	_DetailState(Map params) {
    	this.name = params["name"]?.first;
  	}

  	String pageTitle = "详情";

  	String name;

	@override
	void initState() {
		super.initState();
	}

	@override
	void didUpdateWidget(Detail oldWidget) {
		super.didUpdateWidget(oldWidget);
	}

	@override
	void didChangeDependencies() {
		super.didChangeDependencies();
	}

	@override
	void deactivate() {
		super.deactivate();
	}

	@override
	void dispose() {
		super.dispose();
	}

  	@override
  	Widget build(BuildContext context) {
    	return new Layout(
        	title: pageTitle,
        	child: new Container(
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
								print(res);
							}).catchError((err) {
								print(err);
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
									tooltip: 'Increment',
									child: new Icon(Icons.add),
								);
							},
						),
                	]
            	),
        	),
    	);
  	}
}
