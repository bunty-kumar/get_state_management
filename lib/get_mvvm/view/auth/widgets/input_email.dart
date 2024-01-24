import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../view_models/controller/login/login_view_model.dart';

class InputEmailWidget extends StatelessWidget {
  InputEmailWidget({Key? key}) : super(key: key);

  final loginVM = Get.put(LoginViewModel());

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: loginVM.emailController.value,
      validator: (value) {
        if (value!.isEmpty) {
         return 'Enter email';
        }
        return null;
      },
      decoration: InputDecoration(
          hintText: 'email_hint'.tr, border: const OutlineInputBorder()),
    );
  }
}
