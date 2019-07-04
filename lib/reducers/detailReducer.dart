/*
 * Created by caowencheng on 2019-07-04
 * @Email 845982120@qq.com
 * @Website https://www.caowencheng.com
 */
import 'package:redux/redux.dart';
import 'package:flutter_app/state/detailState.dart';
import '../actions/detail/operationAction.dart';

final detailReducer = combineReducers<DetailState>([
	TypedReducer<DetailState, OperationAction>(_operation)
]);

DetailState _operation (DetailState state, OperationAction action) {
	switch (action.type) {
		case OperationActionTypes.increase:
			state.counter += 1;
			return state;
		default:
			return state;
	}
}