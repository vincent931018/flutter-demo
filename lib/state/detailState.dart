/*
 * Created by caowencheng on 2019-07-04
 * @Email 845982120@qq.com
 * @Website https://www.caowencheng.com
 */
class DetailState {
	int counter;

	DetailState({
		this.counter: 0
	});

	factory DetailState.initial() {
		return new DetailState(
			counter: 0
		);
	}

}