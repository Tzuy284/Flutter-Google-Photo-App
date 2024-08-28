import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  bool _isLoggedIn = false;

  bool get isLoggedIn => _isLoggedIn;

  Future<void> setIsLoggedIn(bool isLoggedIn) async {
    _isLoggedIn = isLoggedIn;
    final sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString('isLoggedIn', isLoggedIn.toString());
  }

  Future<void> clearIsLoggedIn() async {
    _isLoggedIn = false;
    final sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.remove('isLoggedIn');
  }

  Future<void> loadIsLoggedIn() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    _isLoggedIn = sharedPreferences.getString('isLoggedIn') == 'true';
  }
}

// Singleton instance
final localStorage = LocalStorage();
