/*
 * @Author: caowencheng
 * @GitHub: https://github.com/cwc845982120
 * @Description: 详情页 state
 * @Date: 2019-07-16
 */

class DetailPageState {
	int counter;

	DetailPageState({
		this.counter: 0
	});

	factory DetailPageState.initial() {
		return new DetailPageState(
			counter: 0
		);
	}

}