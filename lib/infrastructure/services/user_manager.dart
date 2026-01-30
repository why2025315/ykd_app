import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ykd_tea_app/domain/models/useinfo/userinfo.dart';
import 'package:ykd_tea_app/utils/command.dart';

class UserManager extends ChangeNotifier {
  static const String _tokenKey = 'user_token';
  static const String _userInfoKey = 'user_info';

  late Command0 loginCommand;

  String? _token;
  UserInfo? _userInfo;

  String? get token => _token;
  UserInfo? get userInfo => _userInfo;
  bool get isLoggedIn => _token != null;

  Future<void> initialize() async {
    await _loadFromStorage();
  }

  Future<void> _loadFromStorage() async {
    final prefs = await SharedPreferences.getInstance();
    _token = prefs.getString(_tokenKey);
    final userInfoJson = prefs.getString(_userInfoKey);
    if (userInfoJson != null) {
      _userInfo = UserInfo.fromJson(userInfoJson as Map<String, Object?>);
    }
    notifyListeners();
  }

  Future<void> login(UserInfo userInfo, String token) async {
    _userInfo = userInfo;
    _token = token;
    await _saveToStorage();
    notifyListeners();
  }

  Future<void> logout() async {
    _userInfo = null;
    _token = null;
    await _clearStorage();
    notifyListeners();
  }

  Future<void> _saveToStorage() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_tokenKey, _token!);
    await prefs.setString(_userInfoKey, _userInfo!.toJson().toString());
  }

  Future<void> _clearStorage() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_tokenKey);
    await prefs.remove(_userInfoKey);
  }
}
