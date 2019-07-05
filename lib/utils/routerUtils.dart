/*
 * Created by caowencheng on 2019-07-04
 * @Email 845982120@qq.com
 * @Website https://www.caowencheng.com
 */
import 'package:flutter/material.dart';
import 'package:flutter_app/pages/homePage.dart';
import 'package:flutter_app/pages/detailPage.dart';

enum Routes {
	homePage,
	detailPage
}

class RouterUtils {

	/*
	获取路由页面实例
	 */
	static MaterialPageRoute getRouteByName(Routes routeName, { Map params }) {
		return new MaterialPageRoute(builder: (BuildContext context){
			switch (routeName) {
				case Routes.homePage:
					return new HomePage();
				case Routes.detailPage:
					return new DetailPage(params: params);
				default:
					return new HomePage();
			}
		});
	}

	/*
	获取路由页面名称
	 */
	static String getRouteName(Routes routeName) {
		switch (routeName) {
			case Routes.homePage:
				return "/";
			case Routes.detailPage:
				return "/detailPage";
			default:
				return "/";
		}
	}

	/*
	页面前进
	 */
	static void push(BuildContext context, Routes routeName, { Map params }) {
		Navigator.push(context, getRouteByName(routeName, params: params));
	}

	/*
	页面前进 根据路由名称
	 */
	static void pushNamed(BuildContext context, Routes routeName) {
		Navigator.pushNamed(context, getRouteName(routeName));
	}

	/*
	页面后退
	 */
	static void pop(BuildContext context, { Map result }) {
		Navigator.pop(context, result);
	}

	/*
	页面清栈 并跳转到指定页
	 */
	static void pushAndRemoveUntil(BuildContext context, Routes routeName, { Map params }) {
		Navigator.pushAndRemoveUntil(context, getRouteByName(routeName, params: params), ModalRoute.withName(getRouteName(routeName)));
	}

	/*
	页面清栈 并根据名称跳转到指定页
	 */
	static void pushNamedAndRemoveUntil(BuildContext context, Routes routeName, { Map params }) {
		Navigator.pushNamedAndRemoveUntil(context, getRouteName(routeName), ModalRoute.withName(getRouteName(routeName)));
	}

}