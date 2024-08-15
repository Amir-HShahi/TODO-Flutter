import 'package:flutter/cupertino.dart';

class UserInfoModel with ChangeNotifier {
  String fullName;
  String email;
  String password;
  ImageProvider? profileImage;

  UserInfoModel(
      {required this.fullName, required this.email, required this.password});
}
