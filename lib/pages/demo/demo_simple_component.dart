import 'package:flutter_app/utils/colorUtils.dart';
import 'package:flutter/material.dart';

class DemoSimpleComponent extends StatelessWidget {
    DemoSimpleComponent(
        {String message = "Testing",
            Color color = const Color(0xFFFFFFFF),
            String result})
        : this.message = message,
            this.color = color,
            this.result = result;

    final String message;
    final Color color;
    final String result;

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text("simple"),
                backgroundColor: Color(ColorUtils.fromHexString("#00C3AA")),
            ),
            body: new Material(
                color: color,
                child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        new Image(
                            image: new AssetImage("assets/images/acc_boom.png"),
                            color: ColorUtils.blackOrWhiteContrastColor(color),
                            width: 260.0,
                        ),
                        new Padding(
                            padding: new EdgeInsets.only(left: 50.0, right: 50.0, top: 15.0),
                            child: new Text(
                                message,
                                textAlign: TextAlign.center,
                                style: new TextStyle(
                                    color: ColorUtils.blackOrWhiteContrastColor(color),
                                    height: 2.0,
                                ),
                            ),
                        ),
                        new Padding(
                            padding: new EdgeInsets.only(top: 15.0),
                            child: new ConstrainedBox(
                                constraints: new BoxConstraints(minHeight: 42.0),
                                child: new FlatButton(
                                    highlightColor:
                                    ColorUtils.blackOrWhiteContrastColor(color).withAlpha(17),
                                    splashColor:
                                    ColorUtils.blackOrWhiteContrastColor(color).withAlpha(34),
                                    onPressed: () {
                                        if (result == null) {
                                            Navigator.pop(context);
                                        } else {
                                            Navigator.pop(context, result);
                                        }
                                    },
                                    child: new Text(
                                        "OK",
                                        style: new TextStyle(
                                            fontSize: 18.0,
                                            color: ColorUtils.blackOrWhiteContrastColor(color),
                                        ),
                                    ),
                                ),
                            ),
                        ),
                    ],
                ),
            ),
        );
    }
}