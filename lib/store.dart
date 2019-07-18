/*
 * @Author: caowencheng
 * @GitHub: https://github.com/cwc845982120
 * @Description: app store
 * @Date: 2019-07-16
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