/*
 * @Author: caowencheng
 * @GitHub: https://github.com/cwc845982120
 * @Description: app state 合并
 * @Date: 2019-07-16
 */

import 'detailPageState.dart';
import 'homePageState.dart';

class AppState {
	final DetailPageState detailState;
	final HomePageState homePageState;
	AppState({
		this.detailState,
		this.homePageState,
	});

	factory AppState.initial(){
		return AppState(
			detailState: DetailPageState.initial(),
			homePageState: HomePageState.initial()
		);
	}
}