import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_state_management/get_mvvm/repository/auth_repository.dart';
import '../../../models/auth/user_model.dart';
import '../../../res/routes/route_names.dart';
import '../../../utils/utils.dart';
import '../user_preference/user_preference.dart';

class LoginViewModel extends GetxController {
  final _api = AuthRepository();

  UserPreference userPreference = UserPreference();

  final emailController = TextEditingController().obs;

  final passwordController = TextEditingController().obs;

  RxBool loading = false.obs;

  void loginApi() {
    loading.value = true;
    Map data = {
      'email': emailController.value.text,
      'password': passwordController.value.text
    };
    _api.loginApi(data).then((value) {
      loading.value = false;
      if (value['error'] == 'user not found') {
        Utils.snackBar('Login', value['error']);
      } else {
        UserModel userModel = UserModel(token: value['token'], isLogin: true);
        userPreference.saveUser(userModel).then((value) {
          Get.delete<LoginViewModel>();
          Get.offAllNamed(RouteName.homeView);
          Utils.snackBar('Login', 'Login successfully');
        }).onError((error, stackTrace) {});
      }
    }).onError((error, stackTrace) {
      loading.value = false;
      Utils.snackBar('Error', error.toString());
    });
  }
}
