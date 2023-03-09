import 'package:flutter/cupertino.dart';
import 'package:foodiez/models/users.dart';
import 'package:foodiez/services/auth_services.dart';
import 'package:jwt_decode/jwt_decode.dart';

// the midell man between the UI and the backend{services}
class AuthProvider extends ChangeNotifier {
  String token = "";
  late User user; //late thats mean we dont have it now but we will get it soon

  void signUp({required User user}) async {
    token = await AuthServices().SignUp(user: user);
    print(token);

    notifyListeners();
  }

  void signIn({required User user}) async {
    token = await AuthServices().SignIn(user: user);
    print("you are signIn 1 $token");

    notifyListeners();
  }

  // to make sure you are loged in
  bool get isAuth {
    if (token.isNotEmpty) {
      DateTime? expiryDate = Jwt.getExpiryDate(token);
      if (expiryDate != null && expiryDate.isAfter(DateTime.now())) {
        user = User.fromJson(Jwt.parseJwt(token));
        return true;
      }
    }
    return false;
  }
}
