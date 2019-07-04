/*
 * Created by caowencheng on 2019-07-04
 * @Email 845982120@qq.com
 * @Website https://www.caowencheng.com
 */
import 'package:redux/redux.dart';
import 'package:flutter_app/state/index.dart';
import 'package:flutter_app/reducers/index.dart';

Store<AppState> createStore() {
	return Store(
		appReducer,
		initialState: AppState.initial()
	);
}