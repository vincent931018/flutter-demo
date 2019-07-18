/*
 * @Author: caowencheng
 * @GitHub: https://github.com/cwc845982120
 * @Description: httpClient 接口调用计数器
 * @Date: 2019-07-16
 */

class ApiCounter {

    num apiCount;

    ApiCounter() {
      // 计数器数值
      this.apiCount = 0;
    }

    // 计数器加一
    increase() {
      this.apiCount++;
    }

    // 计数器减一
    decrease() {
      this.apiCount--;
    }

    // 计数器数值重置
    resetApiCount() {
      this.apiCount = 0;
    }

    // 返回计数器数值
    getApiCount() {
      return this.apiCount;
    }
}