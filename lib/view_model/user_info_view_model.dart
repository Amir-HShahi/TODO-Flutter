import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'package:todolist/model/user_info_model.dart';
import 'package:todolist/view_model/utility/empty_input_exception.dart';
import 'package:todolist/view_model/utility/not_matching_password_exception.dart';

class UserInfoViewModel with ChangeNotifier {
  final UserInfoModel _userInfoModel = UserInfoModel(
      fullName: "initialName",
      email: "initialEmail",
      password: "initialPassword");

  void signUpUser(
      String fullName, String email, String password, String confirmPassword) {
    setFullName(fullName);
    setEmail(email);
    setPassword(password, confirmPassword);
  }

  void setFullName(String name) {
    if (name.isEmpty) {
      throw EmptyInputException("Name can't be empty");
    }
    _userInfoModel.fullName = name;
  }

  void setEmail(String email) {
    if (email.isEmpty) {
      throw EmptyInputException("Email can't be empty");
    }
    _userInfoModel.email = email;
  }

  void setPassword(String password, String confirmPassword) {
    if (password.isEmpty) {
      throw EmptyInputException("Password can't be empty");
    }
    if (confirmPassword.isEmpty) {
      throw EmptyInputException("Confirm Password can't be empty");
    }
    if (password != confirmPassword) {
      throw NotMatchingPasswordException("Passwords doesn't match");
    }
    _userInfoModel.password = password;
  }

  Future<void> setProfileImageFromGallery() async {
    File? imageFile;
    final pickedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      imageFile = File(pickedImage.path);
    }
    _setProfileImage(imageFile != null ? FileImage(imageFile) : null);
    notifyListeners();
  }

  void _setProfileImage(ImageProvider? image) {
    if (image != null) {
      _userInfoModel.profileImage = image;
    }
  }

  String getFullName() {
    return _userInfoModel.fullName;
  }

  String getEmail() {
    return _userInfoModel.email;
  }

  ImageProvider? getProfileImage() {
    return _userInfoModel.profileImage;
  }
}
