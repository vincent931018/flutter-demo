/*
 * @Author: caowencheng
 * @GitHub: https://github.com/cwc845982120
 * @Description: 详情页 reducer
 * @Date: 2019-07-16
 */

import 'package:redux/redux.dart';
import 'package:flutter_app/state/detailPageState.dart';
import 'package:flutter_app/actions/detailPage/operationAction.dart';

final detailPageReducer = combineReducers<DetailPageState>([
	TypedReducer<DetailPageState, OperationAction>(_operation)
]);

DetailPageState _operation (DetailPageState state, OperationAction action) {
	switch (action.type) {
		case OperationActionTypes.increase:
			state.counter += 1;
			return state;
		default:
			return state;
	}
}