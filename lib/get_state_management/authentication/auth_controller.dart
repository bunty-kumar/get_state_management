import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class AuthController extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  RxBool loading = false.obs;

  loginUser() async {
    loading.value = true;
    try {
      var response =
          await http.post(Uri.parse("https://reqres.in/api/login"), body: {
        "email": emailController.value.text,
        "password": passwordController.value.text,
      });
      var data = jsonDecode(response.body);
      log("api resp login $data");
      if (response.statusCode == 200) {
        Get.snackbar("Login SuccessFul", data["token"],
            backgroundColor: Colors.green, colorText: Colors.white);
      } else {
        Get.snackbar("Login Failed", data["error"],
            backgroundColor: Colors.red, colorText: Colors.white);
      }
      loading.value = false;
    } catch (ex) {
      loading.value = true;
      Get.snackbar("Exception", ex.toString(),
          backgroundColor: Colors.red, colorText: Colors.white);
    }
  }
}
