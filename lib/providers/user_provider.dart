
import 'package:flutter/material.dart';

import '../types/user_info_type.dart';

class UserProvider extends ChangeNotifier {
  UserInfo? _userInfo;

  UserInfo? get getUserInfo => _userInfo;

  void saveUserInfo(UserInfo userInfo) {
    _userInfo = userInfo;
    notifyListeners();
  }

  void removeUserInfo() {
    _userInfo = null;
    notifyListeners();
  }
}
