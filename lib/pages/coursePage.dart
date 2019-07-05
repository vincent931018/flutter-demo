/*
 * Created by caowencheng on 2019-07-05
 * @Email 845982120@qq.com
 * @Website https://www.caowencheng.com
 */
import 'package:flutter/material.dart';
import 'package:flutter_app/utils/colorUtils.dart';
import 'package:flutter_app/assets/colors.dart';

class CoursePage extends StatefulWidget {
    @override
    _CoursePageState createState() => new _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {

    @override
    Widget build(BuildContext context) {
        return new Material(
            child: new Scaffold(
                appBar: AppBar(
                    title: new Text("课程"),
                    backgroundColor: Color(ColorUtils.fromHexString(ColorsLibrary.themeColor)),
                ),
                body: new Text("课程"),
            ),
        );
    }

}