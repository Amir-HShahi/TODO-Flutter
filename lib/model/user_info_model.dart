import 'package:flutter/cupertino.dart';

class UserInfoModel with ChangeNotifier {
  final String fullName;
  final String email;
  final String password;
  ImageProvider? profileImage;

  UserInfoModel(
      {required this.fullName, required this.email, required this.password});
}
