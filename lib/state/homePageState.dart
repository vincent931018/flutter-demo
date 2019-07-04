/*
 * Created by caowencheng on 2019-07-04
 * @Email 845982120@qq.com
 * @Website https://www.caowencheng.com
 */
class HomePageState {
	int counter;

	HomePageState({
		this.counter: 1
	});

	factory HomePageState.initial() {
		return new HomePageState(
			counter: 1
		);
	}

}