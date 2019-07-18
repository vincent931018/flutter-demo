/*
 * @Author: caowencheng
 * @GitHub: https://github.com/cwc845982120
 * @Description: app reducer 汇总合并
 * @Date: 2019-07-16
 */

import 'package:flutter_app/state/index.dart';
import 'detailPageReducer.dart';
import 'homePageReducer.dart';


AppState appReducer(AppState state, dynamic action) =>
	new AppState(
		detailState: detailPageReducer(state.detailState, action),
		homePageState: homePageReducer(state.homePageState, action)
	);