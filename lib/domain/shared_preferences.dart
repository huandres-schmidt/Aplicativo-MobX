import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {

  Future<void> read(String key) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.get(key);
  }

  Future<void> save(String key, String value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(key, value);
  }

}