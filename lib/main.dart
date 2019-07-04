import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'store.dart';
import 'pages/homePage/homePage.dart';
import 'pages/detail/detail.dart';

class AppComponent extends StatelessWidget {

    /*
    初始化redux store
     */
    final Store store = createStore();

    @override
    Widget build(BuildContext context) {
        return new StoreProvider(
            store: store,
            child: new MaterialApp(
                title: 'Flutter App',
                home: HomePage(),
                routes: <String, WidgetBuilder> {
                    '/detail': (BuildContext context) => Detail(),
                },
            )
        );
    }
}

void main() => runApp(new AppComponent());