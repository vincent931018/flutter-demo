import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_app/utils/logUtils.dart';
import 'package:flutter_app/config/index.dart';
import 'package:flutter_app/store.dart';
import 'package:flutter_app/components/display/globalContext.dart';
import 'package:flutter_app/components/display/bottomNavigation.dart';
import 'package:flutter_app/pages/detailPage.dart';

class AppComponent extends StatelessWidget {

    /*
    初始化redux store
     */
    final Store store = createStore();

    @override
    Widget build(BuildContext context) {
        LogUtils.init(isDebug: (mode != 3));
        return new StoreProvider(
            store: store,
            child: GlobalContext(
                child: new MaterialApp(
                    title: 'Flutter App',
                    debugShowCheckedModeBanner: false,
                    home: BottomNavigationWidget(),
                    routes: <String, WidgetBuilder> {
                        '/homePage': (BuildContext context) => BottomNavigationWidget(),
                        '/detailPage': (BuildContext context) => DetailPage(),
                        '/coursePage': (BuildContext context) => BottomNavigationWidget(currentIndex: 1),
                        '/myPage': (BuildContext context) => BottomNavigationWidget(currentIndex: 2),
                    },
                )
            )
        );
    }
}

void main() => runApp(new AppComponent());