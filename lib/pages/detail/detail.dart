import 'package:flutter/material.dart';
import '../../utils/colorUtils.dart';

class DetailComponent extends StatefulWidget {

    DetailComponent({String name = "haha"}) : this.name = name;

    final String name;

    @override
    _DetailComponentState createState() => new _DetailComponentState(name);
}

class _DetailComponentState extends State<DetailComponent> {
    _DetailComponentState(String name) : this.name = name;

    final String name;

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text("详情"),
                backgroundColor: Color(ColorUtils.fromHexString("#00C3AA")),
            ),
            body: new Material(
                child: new Center(
                    child: new Text(name),
                ),
            )
        );
    }
}