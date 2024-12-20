import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  RxBool isLoading=false.obs;

  void loginApi() async {
    isLoading.value=true;
    try {

      final response = await post(Uri.parse("https://reqres.in/api/login"),
          body: {
            'email': emailController.value.text,
            'password': passwordController.value.text
          });
      var data = jsonDecode(response.body);
      print(response.statusCode);
      print(data);
      if (response.statusCode == 200) {

        Get.snackbar("Login Successfully","thank u");
        isLoading.value=false;
      } else {
        Get.snackbar("Login Failed", data['error']);
        isLoading.value=false;
      }
    } catch (e) {
      Get.snackbar("Exception", e.toString());
      isLoading.value=false;
    }
  }
}
