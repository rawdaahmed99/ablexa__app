import 'dart:convert';

import 'package:http/http.dart';

class login_user {
  void login(String email, String password) async {
    
    try {
      Response response = await post(
          Uri.parse('http://ablexav3.somee.com/api/User/login'),
          headers: <String, String>{
            'Content-Type': 'application/json',
          },
          body: jsonEncode(
              <String, String>{'email': email, 'password': password}));

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body.toString());
        print(data['token']);
        print("$email $password");
      } else {
        print('Login failed: ${response.statusCode}');
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
