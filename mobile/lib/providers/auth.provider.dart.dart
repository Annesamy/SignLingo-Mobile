import 'package:flutter/material.dart';
import 'package:mobile/services/auth.service.dart';

class AuthProvider extends ChangeNotifier {
  String token = "";
  String name = "";
  String email = "";
  String password = "";
  bool isLoading = false;

  //login method
  Future<void> login() async {
    //call the login method from the auth service
    //and store the token in the token variable
    //notify the listeners
    print("now calling the service");

    isLoading = true;
    notifyListeners();
    try {
      String token = await AuthService.login(this.email, this.password);

      this.token = token;
      notifyListeners();
    } catch (error) {
      print(error);
    }

    isLoading = false;
    notifyListeners();
  }

  Future<void> signup() async {
    //call the login method from the auth service
    //and store the token in the token variable
    //notify the listeners
    isLoading = true;
    notifyListeners();
    try {
      String token =
          await AuthService.signup(this.email, this.password, this.name);

      this.token = token;

      notifyListeners();
    } catch (error) {
      print(error);
    }
    isLoading = false;

    notifyListeners();
  }

  void logout() {
    this.token = "";
    notifyListeners();
  }
}
