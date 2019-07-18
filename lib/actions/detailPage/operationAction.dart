/*
 * @Author: caowencheng
 * @GitHub: https://github.com/cwc845982120
 * @Description: 详情页 actions
 * @Date: 2019-07-16
 */

enum OperationActionTypes {
	increase
}

class OperationAction {

	OperationAction(OperationActionTypes type, { dynamic data }) {
		this.type = type;
		this.data = data;
	}

	/*
	action 类型
	 */
	OperationActionTypes type;

	/*
	预处理数据
	 */
	dynamic data;

}