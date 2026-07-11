import 'package:shared_preferences/shared_preferences.dart';

void saveAccessToken(String token) async {
  final pref = await SharedPreferences.getInstance();
  await pref.setString('token', token);
}

Future<String> getAccessToken() async {
  final pref = await SharedPreferences.getInstance();
  return pref.getString('token') ?? '';
}

void removeToken() async {
  final pref = await SharedPreferences.getInstance();
  await pref.remove('token');
}
