import 'package:json_annotation/json_annotation.dart';
part 'users.g.dart';

@JsonSerializable()
class User {
  int? id;
  String username;
  String? password;
  String? email;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);

  User({
    this.id,
    this.email,
    this.password,
    required this.username,
  });
}
