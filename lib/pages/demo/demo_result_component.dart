import 'package:flutter/material.dart';

class DemoResultComponent extends StatefulWidget {
    @override
    _DemoResultComponentState createState() => new _DemoResultComponentState();
}

class _DemoResultComponentState extends State<DemoResultComponent> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text("结果"),
            ),
            body: new Container(),
        );
    }
}