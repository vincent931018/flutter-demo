/*
 * Created by caowencheng on 2019-07-08
 * @Email 845982120@qq.com
 * @Website https://www.caowencheng.com
 */

import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:flutter_app/components/display/toast.dart';
import 'package:flutter_app/components/display/loading.dart';

LinkedHashMap<_GlobalContextState, BuildContext> _contextMap = LinkedHashMap();

bool showMask = false;

class GlobalContext extends StatefulWidget {

    final Widget child;

    final bool mask;

    const GlobalContext({
        Key key,
        @required this.child,
        @required this.mask,
    })  : super(key: key);

    @override
    _GlobalContextState createState() => _GlobalContextState();
}

class _GlobalContextState extends State<GlobalContext> {
    @override
    void initState() {
        super.initState();
    }

    @override
    void dispose() {
        _contextMap.remove(this);
        super.dispose();
    }

    @override
    Widget build(BuildContext context) {
        var overlay = Overlay(
            initialEntries: [
                OverlayEntry(
                    builder: (ctx) {
                        _contextMap[this] = ctx;
                        return widget.child;
                    },
                ),
            ],
        );

        Widget w = Directionality(
            child: Stack(children: <Widget>[
                overlay,
                Positioned(
                    left: 0.0,
                    right: 0.0,
                    top: 0.0,
                    bottom: 0.0,
                    child: IgnorePointer(
                        ignoring: !showMask,
                        child: Container(
                            color: Colors.black.withOpacity(0.0),
                        ),
                    ),
                )
            ]),
            textDirection: TextDirection.ltr,
        );

        return w;
    }
}

globalShowToast(String msg, bool mask) {
    showMask = mask;
    Toast.show(_contextMap.values.first, msg);
}

globalShowLoading(bool mask) {
    showMask = mask;
    Loading.show(_contextMap.values.first);
}

globalHideLoading() {
    Loading.dismiss();
}