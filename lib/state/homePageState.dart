/*
 * @Author: caowencheng
 * @GitHub: https://github.com/cwc845982120
 * @Description: 首页页 state
 * @Date: 2019-07-16
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