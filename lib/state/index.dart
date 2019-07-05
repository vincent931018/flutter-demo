/*
 * Created by caowencheng on 2019-07-04
 * @Email 845982120@qq.com
 * @Website https://www.caowencheng.com
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