import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:todolist/model/user_info_model.dart';
import 'package:todolist/services/shared_preferences.dart';
import 'package:todolist/view_model/utility/empty_input_exception.dart';
import 'package:todolist/view_model/utility/not_matching_password_exception.dart';

class UserInfoViewModel with ChangeNotifier {
  UserInfoModel _userInfoModel = UserInfoModel(
      fullName: "initialName",
      email: "initialEmail",
      password: "initialPassword");

  void signUpUser(
      String fullName, String email, String password, String confirmPassword) {
    setFullName(fullName);
    setEmail(email);
    setPassword(password, confirmPassword);
    saveUserInfoData();
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
      _saveImage(imageFile);
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

  void saveUserInfoData() async {
    saveKeyValue("userInfoModel", jsonEncode(_userInfoModel.toJson()));
  }

  void loadUserInfoData() async {
    final prefs = await getSharedPreferences();
    String? mappedUserInfo = prefs.getString("userInfoModel");
    UserInfoModel loadedModel =
        UserInfoModel.fromJson(jsonDecode(mappedUserInfo!));
    _userInfoModel = loadedModel;
    _loadImage();
    notifyListeners();
  }

  Future<void> _saveImage(File imageFile) async {
    final directory = await getApplicationDocumentsDirectory();
    final imagePath = '${directory.path}/profileImage.jpg';
    await imageFile.copy(imagePath);
  }

  Future<void> _loadImage() async {
    try {
      final directory = await getApplicationDocumentsDirectory();
      final imagePath = '${directory.path}/profileImage.jpg';
      _setProfileImage(FileImage(File(imagePath)));
    } catch(e) {
      //image not found
    }
  }
}
