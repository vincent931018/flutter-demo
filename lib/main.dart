import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'components/display/bottomNavigation.dart';
import 'package:flutter_app/pages/detailPage.dart';
import 'store.dart';

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
                debugShowCheckedModeBanner: false,
                home: BottomNavigationWidget(),
                routes: <String, WidgetBuilder> {
                    '/detailPage': (BuildContext context) => DetailPage(),
                },
            )
        );
    }
}

void main() => runApp(new AppComponent());