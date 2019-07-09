import 'package:json_annotation/json_annotation.dart';

/**
 * @Author: caowencheng
 * @GitHub: https://github.com/cwc845982120
 * @Description: user model
 * @Date: 2019-07-09
 */

/// User model
// user.g.dart 将在我们运行生成命令后自动生成
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