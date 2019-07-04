/*
 * Created by caowencheng on 2019-07-04
 * @Email 845982120@qq.com
 * @Website https://www.caowencheng.com
 */
/*
 * Created by caowencheng on 2019-07-04
 * @Email 845982120@qq.com
 * @Website https://www.caowencheng.com
 */
import 'package:flutter/material.dart';
import '../../utils/colorUtils.dart';
import '../../assets/colors.dart';

class CustomTabBar extends StatefulWidget {

	CustomTabBar(PageController pageController, {
		int activeIndex = 0,
	}) :	this.activeIndex = activeIndex,
			this.pageController = pageController;

	final int activeIndex;

	final PageController pageController;

	@override
	_CustomTabBarState createState() => new _CustomTabBarState(
		pageController,
		activeIndex,
	);

}

class _CustomTabBarState extends State<CustomTabBar> {

	_CustomTabBarState(PageController pageController, int activeIndex) {
		this._pageController = pageController;
		this._activeIndex = activeIndex;
	}

	PageController _pageController;

	/*
    tabBar 激活index
     */
	num _activeIndex = 0;

	@override
	Widget build(BuildContext context) {
		return new BottomNavigationBar(
			items: <BottomNavigationBarItem>[
				new BottomNavigationBarItem(
					icon: new Icon(Icons.home), title: new Text("首页")),
				new BottomNavigationBarItem(
					icon: new Icon(Icons.map), title:  new Text("课程")),
				new BottomNavigationBarItem(
					icon: new Icon(Icons.message), title:  new Text("我的")),
			],
			type: BottomNavigationBarType.fixed,
			//默认选中首页
			currentIndex: _activeIndex,
			iconSize: 24.0,
			onTap: onTap,
			backgroundColor: Color(ColorUtils.fromHexString(ColorsLibrary.themeColor)),
			selectedItemColor: Color(ColorUtils.fromHexString(ColorsLibrary.whiteColor)),
			unselectedItemColor: Color(ColorUtils.fromHexString(ColorsLibrary.inactiveTabBarItemColor)),
		);
	}

	void onTap(int index) {
		_pageController.jumpToPage(index);
		setState(() {
			_activeIndex = index;
		});
	}
}