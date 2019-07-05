/*
 * Created by caowencheng on 2019-07-04
 * @Email 845982120@qq.com
 * @Website https://www.caowencheng.com
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