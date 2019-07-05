/*
 * Created by caowencheng on 2019-07-04
 * @Email 845982120@qq.com
 * @Website https://www.caowencheng.com
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