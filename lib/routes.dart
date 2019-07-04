import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import './pages/homePage/homePage.dart';
import './pages/detail/detail.dart';

class Routes {
    static String homePage = "/";
    static String detail = "/detail";

    static void configureRoutes(Router router) {

        router.notFoundHandler = new Handler(
            handlerFunc: (BuildContext context, Map<String, List<String>> params) {
                print("ROUTE WAS NOT FOUND !!!");
                // 页面不存在 返回首页
                return new HomePage();
            });

        router.define(homePage, handler: new Handler(
            handlerFunc: (BuildContext context, Map<String, List<String>> params) {
                return new HomePage();
            }));

        router.define(detail, handler: new Handler(
            handlerFunc: (BuildContext context, Map<String, List<String>> params) {
                return new Detail(params);
            }));
    }
}