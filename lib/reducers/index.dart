/*
 * Created by caowencheng on 2019-07-04
 * @Email 845982120@qq.com
 * @Website https://www.caowencheng.com
 */
import 'package:flutter_app/state/index.dart';
import 'detailReducer.dart';
import 'homePageReducer.dart';


AppState appReducer(AppState state, dynamic action) =>
	new AppState(
		detailState: detailReducer(state.detailState, action),
		homePageState: homePageReducer(state.homePageState, action)
	);