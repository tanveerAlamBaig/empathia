import 'package:empathia/constant/error_handling.dart';
import 'package:empathia/constant/utils.dart';
import 'package:empathia/models/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import '../constant/global_variables.dart';


class AuthService {
  void signUpUser({
    required BuildContext context,
    required String email,
    required String password,
    required String name,
    required String phone,
  }) async {
    try {
      User user = User(
          id: '',
          name: name,
          email: email,
          password: password,
          address: '',
          type: '',
          token: '',
          phone: phone);
      http.Response res = await http.post(Uri.parse('$uri/api/signup'),
          body: user.toJson(),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          });
       httpErrorHandle(
          response: res,
          context: context,
          onSuccess: () {
            showSnackBar(
                context, 'account created login with same credentials');
          });
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }
}

class AuthServices {
  void signUpUser({
    required BuildContext context,
    required String email,
    required String password,
    required String name,
    required String phone,
  }) async {
    try {
      User user = User(
          id: '',
          name: name,
          email: email,
          password: password,
          address: '',
          type: '',
          token: '',
          phone: phone);
      http.Response res = await http.post(Uri.parse('$uri/api/signup'),
          body: user.toJson(),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          });
      httpErrorHandle(
          response: res,
          context: context,
          onSuccess: () {
            showSnackBar(
                context, 'account created login with same credentials');
          });
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }
}
