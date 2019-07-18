/*
 * @Author: caowencheng
 * @GitHub: https://github.com/cwc845982120
 * @Description: main 主函数
 * @Date: 2019-07-16
 */


import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_app/utils/logUtils.dart';
import 'package:flutter_app/config/index.dart';
import 'package:flutter_app/store.dart';
import 'package:flutter_app/components/display/globalContext.dart';
import 'package:flutter_app/components/display/bottomTabBar.dart';
import 'package:flutter_app/pages/detailPage.dart';
import 'package:flutter_app/pages/studioList.dart';

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
                    home: BottomTabBar(currentIndex: 0),
                    routes: <String, WidgetBuilder> {
                        '/homePage': (BuildContext context) => new BottomTabBar(currentIndex: 0),
                        '/studioList': (BuildContext context) => new StudioList(),
                        '/detailPage': (BuildContext context) => new DetailPage(),
                        '/appointmentPage': (BuildContext context) => new BottomTabBar(currentIndex: 1),
                        '/myPage': (BuildContext context) => new BottomTabBar(currentIndex: 2),
                    },
                )
            )
        );
    }
}

void main() => runApp(new AppComponent());