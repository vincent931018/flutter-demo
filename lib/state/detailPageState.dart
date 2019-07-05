/*
 * Created by caowencheng on 2019-07-04
 * @Email 845982120@qq.com
 * @Website https://www.caowencheng.com
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