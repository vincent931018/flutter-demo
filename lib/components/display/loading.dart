/*
 * Created by caowencheng on 2019-07-08
 * @Email 845982120@qq.com
 * @Website https://www.caowencheng.com
 */

import 'package:flutter/material.dart';

class Loading {
    static OverlayEntry overlayEntry;

    static bool dismissed = false;

    static void show(BuildContext context) async {
        var overlayState = Overlay.of(context);

        overlayEntry = new OverlayEntry(builder: (context) {
            return buildToastLayout();
        });

        overlayState.insert(overlayEntry);

        dismissed = false;
    }

    static void dismiss() async {
        if (!dismissed) {
            overlayEntry?.remove();
        }
        dismissed = true;
    }

    static LayoutBuilder buildToastLayout() {
        return LayoutBuilder(builder: (context, constraints) {
            return Container(
                child: Container(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                            CircularProgressIndicator(
                                valueColor: new AlwaysStoppedAnimation<Color>(
                                    Colors.white.withOpacity(0.5)),
                            ),
                            Container(
                                child: new Text(
                                    "加载中...",
                                    style: TextStyle(color: Colors.white.withOpacity(0.9)),
                                ),
                                margin: EdgeInsets.only(
                                    top: 10,
                                ),
                            )
                        ],
                    ),
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.6),
                        borderRadius: BorderRadius.all(
                            Radius.circular(5),
                        ),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                ),
                alignment: Alignment.center,
            );
        });
    }
}
