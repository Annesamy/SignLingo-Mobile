import 'package:http/http.dart';
import 'dart:convert';

class AuthService {
  //static login method that sends the request to backend server

  static Future<String> login(String email, String password) async {
    try {
      print(email);
      print(password);

      var url = Uri.https("sign-lingo-backend.onrender.com", 'login');
      Response response = await post(
        url,
        body: jsonEncode({'email': email, 'password': password}),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode != 200) throw response.body;
      Map<String, dynamic> decodedResponse = jsonDecode(response.body);

      print(decodedResponse);
      return decodedResponse['token'];
    } catch (error) {
      return Future.error(error);
    }
  }

  static Future<String> signup(
      String email, String password, String name) async {
    try {
      var url = Uri.https("sign-lingo-backend.onrender.com", 'signup');
      Response response = await post(
        url,
        body: jsonEncode({'email': email, 'password': password, "name": name}),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode != 201) throw response.body;
      Map<String, dynamic> decodedResponse = jsonDecode(response.body);
      return decodedResponse['token'];
    } catch (error) {
      return Future.error(error);
    }
  }
}
