/*
 * @Author: caowencheng
 * @GitHub: https://github.com/cwc845982120
 * @Description: 首页 reducer
 * @Date: 2019-07-16
 */

import 'package:redux/redux.dart';
import 'package:flutter_app/state/homePageState.dart';
import 'package:flutter_app/actions/homePage/operationAction.dart';

final homePageReducer = combineReducers<HomePageState>([
	TypedReducer<HomePageState, OperationAction>(_increase)
]);

HomePageState _increase (HomePageState state, OperationAction action) {
	switch (action.type) {
		case OperationActionTypes.increase:
			state.counter += 1;
			return state;
		default:
			return state;
	}
}