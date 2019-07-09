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

class GlobalContext extends StatefulWidget {

    final Widget child;

    const GlobalContext({
        Key key,
        @required this.child,
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

        return Directionality(
            child: overlay,
            textDirection: TextDirection.ltr,
        );
    }
}

globalShowToast(String msg, bool mask) {
    Toast.show(_contextMap.values.first, msg, mask: mask);
}

globalShowLoading(bool mask) {
    Loading.show(_contextMap.values.first, mask: mask);
}

globalHideLoading() {
    Loading.dismiss();
}