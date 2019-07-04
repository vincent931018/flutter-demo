import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_app/components/display/layout.dart';
import '../../actions/homePage/operationAction.dart';
import '../../utils/routerUtils.dart';
import '../../assets/images.dart';
import '../../assets/icons.dart';

class HomePage extends StatefulWidget {
    @override
    State createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {

    @override
    void initState() {
        super.initState();
    }
    
    @override
    void didUpdateWidget(HomePage oldWidget) {
        super.didUpdateWidget(oldWidget);
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
            showAppBar: true,
            showBottomBar: true,
            isTabComponent: true,
            child: new Container(
                width: MediaQuery.of(context).size.width,
                child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
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
                                return new FloatingActionButton(
                                    // Attach the `callback` to the `onPressed` attribute
                                    onPressed: callback,
                                    tooltip: 'Increment',
                                    child: new Icon(
                                        IconsLibrary.icon_add,
                                        size: 50,
                                        color: const Color.fromRGBO(0, 0, 0, 0.7),
                                    ),
                                    backgroundColor: Color.fromRGBO(255, 255, 255, 0),
                                );
                            },
                        ),
                    ]
                ),
            )
        );
    }

    void _toDetail(BuildContext context) {
        RouterUtils.push(context, Routes.detail, params: {"name": "c"});
    }
}