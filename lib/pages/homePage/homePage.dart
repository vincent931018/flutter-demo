import 'package:flutter/material.dart';
import '../../utils/colorUtils.dart';
import '../../utils/routerUtils.dart';

class HomePageComponent extends StatefulWidget {
    @override
    State createState() => new HomePageComponentState();
}

class HomePageComponentState extends State<HomePageComponent> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('主页'),
                backgroundColor: Color(ColorUtils.fromHexString("#00C3AA")),
            ),
            body: new Material(
                child: new Center(
                    child: new FlatButton(
                        onPressed: () {
                            _toDetail();
                        }, 
                        child: new Image.asset(
                            'images/kid.jpg',
                            width: 200,
                            height: 200,
                            fit: BoxFit.contain,
                        ),
                    )
                ),
            )
        );
    }
    
    void _toDetail() {
        RouterUtils.navigateTo(context, "/detail?params=123&name=12").then((res) {
            print("页面返回");
        });
    }
}