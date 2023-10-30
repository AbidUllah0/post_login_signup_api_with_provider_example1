import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:post_login_signup_api_with_provider/Data/Api_Services/app_url.dart';

class SignUpProvider with ChangeNotifier {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool _isLoading = false;

  bool get loading => _isLoading;

  void setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  void Login(String email, String password) async {
    setLoading(true);
    final response = await http.post(Uri.parse(AppUrl.apiUri), body: {
      'email': email,
      'password': password,
    });

    if (response.statusCode == 200) {
      try {
        print("success");
        setLoading(false);
      } catch (e) {
        print('object');
        print(e);
      }
    } else {
      print('Failde');
    }
  }
}
