/*
 * @Author: caowencheng
 * @GitHub: https://github.com/cwc845982120
 * @Description: 自定义底部导航栏
 * @Date: 2019-07-16
 */

import 'package:flutter/material.dart';
import 'package:flutter_app/pages/homePage.dart';
import 'package:flutter_app/pages/appointmentPage.dart';
import 'package:flutter_app/pages/myPage.dart';
import 'package:flutter_app/utils/colorUtils.dart';
import 'package:flutter_app/assets/colors.dart';

class BottomTabBar extends StatefulWidget {

	BottomTabBar({Key key, this.currentIndex}) : super(key: key);

	final int currentIndex;

	@override
	State<StatefulWidget> createState() => _BottomTabBarState();
}

class _BottomTabBarState extends State<BottomTabBar> {

	List<Widget> list = List();

	int _currentIndex;

	@override
	void initState() {
		_currentIndex = widget.currentIndex;
		list
			..add(HomePage())
			..add(AppointmentPage())
			..add(MyPage());
		super.initState();
	}

	Widget _buildBottomTabBar(){
		return Container(
			color: Colors.white,
			child: SafeArea(
				child: SizedBox(
					height: 54.0,
					child: Card(
						elevation: 0.0,
						shape: RoundedRectangleBorder(),
						margin: EdgeInsets.all(0.0),
						child: Row(
							crossAxisAlignment: CrossAxisAlignment.center,
							mainAxisAlignment: MainAxisAlignment.center,
							children: <Widget>[
								_buildBottomItem(title: '首页',icon: Icons.home,index: 0),
								_buildBottomItem(title: '预约',icon: Icons.timer,index: 1),
								_buildBottomItem(title: '我的',icon: Icons.person,index: 2),
							],
						),
					),
				),
			),
		);
	}

	Widget _buildBottomItem({String title, IconData icon, int index}){

		// tabItem 激活状态时颜色
		Color _activeColor = index == _currentIndex ? Color(ColorUtils.fromHexString(ColorsLibrary.themeColor)) : Colors.grey;

		return Expanded(
			child: InkResponse(
				child: Column(
					crossAxisAlignment: CrossAxisAlignment.center,
					mainAxisAlignment: MainAxisAlignment.center,
					children: <Widget>[
						Icon(
							icon,
							color: _activeColor
						),
						Text(
							title,
							style: TextStyle(
								color: _activeColor,
								fontSize: 12.0
							),
						)
					],
				),
				onTap: (){
					setState(() {
						_currentIndex = index;
					});
				},
			),
		);
	}

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			body: list[_currentIndex],
			bottomNavigationBar: _buildBottomTabBar(),
		);
	}
}