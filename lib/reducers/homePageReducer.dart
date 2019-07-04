/*
 * Created by caowencheng on 2019-07-04
 * @Email 845982120@qq.com
 * @Website https://www.caowencheng.com
 */
import 'package:redux/redux.dart';
import 'package:flutter_app/state/homePageState.dart';
import '../actions/homePage/operationAction.dart';

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