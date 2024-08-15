import 'package:flutter/cupertino.dart';
import 'package:todolist/model/user_info_model.dart';

class UserInfoViewModel with ChangeNotifier {
  final UserInfoModel _userInfoModel = UserInfoModel(
      fullName: "initialName",
      email: "initialEmail",
      password: "initialPassword");

  void setFullName(String name) {
    _userInfoModel.fullName = name;
  }

  void setEmail(String email) {
    _userInfoModel.email = email;
  }

  void setPassword(String password) {
    _userInfoModel.password = password;
  }

  String getFullName() {
    return _userInfoModel.fullName;
  }

  String getEmail() {
    return _userInfoModel.email;
  }
}
