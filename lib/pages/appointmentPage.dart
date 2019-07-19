/*
 * @Author: caowencheng
 * @GitHub: https://github.com/cwc845982120
 * @Description: 预约页
 * @Date: 2019-07-16
 */

import 'package:flutter/material.dart';
import 'package:flutter_app/components/display/pageLayout.dart';

class AppointmentPage extends StatefulWidget {
    @override
    _AppointmentPageState createState() => new _AppointmentPageState();
}

class _AppointmentPageState extends State<AppointmentPage> with AutomaticKeepAliveClientMixin {

    @override
    bool get wantKeepAlive => true;

    @override
    Widget build(BuildContext context) {
        super.build(context);
        return new PageLayout(
            title: "预约",
            child: new Text("预约")
        );
    }

}