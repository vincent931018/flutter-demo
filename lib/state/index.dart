/*
 * Created by caowencheng on 2019-07-04
 * @Email 845982120@qq.com
 * @Website https://www.caowencheng.com
 */
import 'detailState.dart';
import 'homePageState.dart';

class AppState {
	final DetailState detailState;
	final HomePageState homePageState;
	AppState({
		this.detailState,
		this.homePageState,
	});

	factory AppState.initial(){
		return AppState(
			detailState: DetailState.initial(),
			homePageState: HomePageState.initial()
		);
	}
}