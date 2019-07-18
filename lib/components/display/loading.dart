/*
 * @Author: caowencheng
 * @GitHub: https://github.com/cwc845982120
 * @Description: loading 展示
 * @Date: 2019-07-16
 */

import 'package:flutter/material.dart';

class Loading {

    static OverlayEntry overlayEntry;

    static bool dismissed = false;

    static void show(BuildContext context, { bool mask = false }) async {
        var overlayState = Overlay.of(context);

        overlayEntry = new OverlayEntry(builder: (context) {
            return buildToastLayout(mask);
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

    static LayoutBuilder buildToastLayout(bool mask) {
        return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
            return IgnorePointer(
                ignoring: !mask,
                child: Material(
                    color: Colors.white.withOpacity(0),
                    child: Stack(
                        alignment: const FractionalOffset(0.5, 0.5),
                        children: <Widget>[
                            Positioned(
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
                            )
                        ],
                    ),
                ),
            );
        });
    }
}
