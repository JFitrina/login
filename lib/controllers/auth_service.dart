import 'dart:convert';
import 'package:flutter_1/models/user_model.dart';
import 'package:flutter_1/varibles.dart';
import 'package:http/http.dart' as http;

class AuthService {
  login() {
    Future<void> login(String username, String password) async {
      print(apiURL);

      final response = await http.post(Uri.parse("$apiURL/api/auth/login"),
          headers: {"Content-Type": "application/json"},
          body: jsonEncode(
            {
              "username": username,
              "password": password,
            },
          ));
      print(response.statusCode);
    }
  }
}