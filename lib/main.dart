import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter_app/routes.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import './utils/routerUtils.dart';
import 'store.dart';

class AppComponent extends StatefulWidget {
    @override
    State createState() {
        return new AppComponentState();
    }
}

class AppComponentState extends State<AppComponent> {

    final Store store = createStore();

    AppComponentState() {
        final router = new Router();
        Routes.configureRoutes(router);
        RouterUtils.router = router;
    }

    @override
    Widget build(BuildContext context) {
        final app = new MaterialApp(
            title: 'Flutter App',
            debugShowCheckedModeBanner: false,
            theme: new ThemeData(
                primarySwatch: Colors.blue,
            ),
            onGenerateRoute: RouterUtils.router.generator,
        );
        return new StoreProvider(
            store: store,
            child: app
        );
    }
}

void main() => runApp(new AppComponent());