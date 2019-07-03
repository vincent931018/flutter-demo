import 'package:flutter/material.dart';
import '../../utils/colorUtils.dart';

class DemoMessageComponent extends StatelessWidget {
    DemoMessageComponent(
        {@required this.message, this.color = const Color(0xFFFFFFFF)});

    final String message;
    final Color color;

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text("message"),
                backgroundColor: Color(ColorUtils.fromHexString("#00C3AA")),
            ),
            body: new Material(
                color: this.color,
                child: new Center(
                    child: new Text(
                        message,
                        style: new TextStyle(
                            fontFamily: "Lazer84",
                        ),
                    )
                ),
            ),
        );
    }
}