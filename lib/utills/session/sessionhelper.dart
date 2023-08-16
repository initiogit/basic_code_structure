/////////////////////////////////////////////     USE FOR SESSION MANAGER /////////////////////////////////////////////////////////

/*import 'dart:convert';
import 'dart:developer';


import 'sessionmanager.dart';

class SessionHelper {
  SessionHelper._();

  static final SessionHelper _instance = SessionHelper._();

  factory SessionHelper() {
    return _instance;
  }

  // Todo:Difficulty Level

  Future<void> setLoginData(LoginData loginResponce) async {
    // save user values in shared pref
    await SessionManager.setStringValue(
        SpString.spDifficulty, jsonEncode(loginResponce.toJson()));

    print('LoginData IN SP ${loginResponce}');
  }

  static LoginData? loginSavedData;

  Future<LoginData?> getLoginData() async {
    String response =
        await SessionManager.getStringValue(SpString.spDifficulty);
    if (CheckNullData.checkNullOrEmptyString(response)) {
      return null;
    } else {
      log(response);
      //String data = json.decode(response);
      return LoginData.fromJson(jsonDecode(response));
    }
  }
}*/
