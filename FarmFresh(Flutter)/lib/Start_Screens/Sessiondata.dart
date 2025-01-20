import 'package:shared_preferences/shared_preferences.dart';

class Sessiondata {
  static bool? islogin;
  static String? emailId;

  static Future<void> storeSessionData(
      {required bool loginData, required String emailId}) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    sharedPreferences.setBool("loginSession", loginData);
    sharedPreferences.setString("email", emailId);

    getSessionData();
  }

  static Future<void> getSessionData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    islogin = sharedPreferences.getBool("loginSession") ?? false;
    emailId = sharedPreferences.getString("email") ?? "";
  }
}
