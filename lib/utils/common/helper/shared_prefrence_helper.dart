// import 'package:shared_preferences/shared_preferences.dart';
//
// class SharedPreferencesHelper {
//   static const String _profileImageKey = 'profileImage';
//
//   static Future<void> saveProfileImagePath(String path) async {
//     final prefs = await SharedPreferences.getInstance();
//     await prefs.setString(_profileImageKey, path);
//   }
//
//   static Future<String?> getProfileImagePath() async {
//     final prefs = await SharedPreferences.getInstance();
//     return prefs.getString(_profileImageKey);
//   }
// }