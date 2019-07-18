/*
 * @Author: caowencheng
 * @GitHub: https://github.com/cwc845982120
 * @Description: 预约页
 * @Date: 2019-07-16
 */

import 'package:flutter/material.dart';
import 'package:flutter_app/components/display/navigationHeader.dart';

class AppointmentPage extends StatefulWidget {
    @override
    _AppointmentPageState createState() => new _AppointmentPageState();
}

class _AppointmentPageState extends State<AppointmentPage> {

    @override
    Widget build(BuildContext context) {
        return new Material(
            child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                    new NavigationHeader("课程"),
                    new Text("课程")
                ],
            ),
        );
    }

}