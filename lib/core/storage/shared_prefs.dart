import 'package:flutter_bloc_architecture_app_template/core/storage/storage.dart';

class SharedPrefs {
  const SharedPrefs._();

  // local

  //network
  static const String _accessToken = 'accessToken';
  static const String _refreshToken = 'refreshToken';

  // data

  static Future<void> setAccessToken({required String token}) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_accessToken, token);
  }

  static Future<String?> getAccessToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_accessToken);
  }

  static Future<void> setRefreshToken({required String token}) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_refreshToken, token);
  }

  static Future<String?> getRefreshToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_refreshToken);
  }

  static Future<void> clear() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }
}
