/*
 * @Author: caowencheng
 * @GitHub: https://github.com/cwc845982120
 * @Description: 用户信息模型
 * @Date: 2019-07-16
 */

import 'package:json_annotation/json_annotation.dart';

/// User model
part 'user.g.dart';

@JsonSerializable()
class User {

    User(this.name, this.email);

    String name;
    String email;

    //不同的类使用不同的mixin即可
    factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

    Map<String, dynamic> toJson() => _$UserToJson(this);
}