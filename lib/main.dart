import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter_app/routes.dart';
import './utils/routerUtils.dart';

class AppComponent extends StatefulWidget {
    @override
    State createState() {
        return new AppComponentState();
    }
}

class AppComponentState extends State<AppComponent> {
    AppComponentState() {
        final router = new Router();
        Routes.configureRoutes(router);
        RouterUtils.router = router;
    }

    @override
    Widget build(BuildContext context) {
        final app = new MaterialApp(
            title: 'Fluro',
            debugShowCheckedModeBanner: false,
            theme: new ThemeData(
                primarySwatch: Colors.blue,
            ),
            onGenerateRoute: RouterUtils.router.generator,
        );
        print("initial route = ${app.initialRoute}");
        return app;
    }
}

void main() => runApp(new AppComponent());