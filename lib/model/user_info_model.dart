import 'package:flutter/cupertino.dart';

class UserInfoModel with ChangeNotifier {
  String fullName;
  String email;
  String password;
  ImageProvider? profileImage;

  UserInfoModel(
      {required this.fullName, required this.email, required this.password});

  factory UserInfoModel.fromJson(Map<String, dynamic> json) => UserInfoModel(
      fullName: json["fullName"],
      email: json["email"],
      password: json["password"]);

  Map<String, dynamic> toJson() =>
      {"fullName": fullName, "email": email, "password": password};
}
