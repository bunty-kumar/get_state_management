import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../view_models/controller/login/login_view_model.dart';
import 'widgets/input_email.dart';
import 'widgets/input_password.dart';
import 'widgets/login_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final loginVM = Get.put(LoginViewModel());

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('login'.tr),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  InputEmailWidget(),
                  const SizedBox(
                    height: 20,
                  ),
                  InputPasswordWidget(),
                ],
              ),
            ),

            const SizedBox(
              height: 40,
            ),
            LoginButtonWidget(
              formKey: _formKey,
            )
            // Form(
            //   key: _formKey,
            //   child: Column(
            //     children: [
            //       TextFormField(
            //         controller: loginVM.emailController.value,
            //         validator: (value) {
            //           if (value!.isEmpty) {
            //             return "Enter Email";
            //           }
            //           return null;
            //         },
            //         decoration: InputDecoration(
            //             hintText: 'email_hint'.tr,
            //             border: const OutlineInputBorder()),
            //       ),
            //       const SizedBox(
            //         height: 12,
            //       ),
            //       TextFormField(
            //         controller: loginVM.passwordController.value,
            //         obscureText: true,
            //         validator: (value) {
            //           if (value!.isEmpty) {
            //             return "Enter password";
            //           }
            //           return null;
            //         },
            //         onFieldSubmitted: (value) {},
            //         decoration: InputDecoration(
            //             hintText: 'password_hint'.tr,
            //             border: const OutlineInputBorder()),
            //       )
            //     ],
            //   ),
            // ),
            // const SizedBox(
            //   height: 40,
            // ),
            // Obx(() => RoundButton(
            //     width: 200,
            //     title: 'login'.tr,
            //     loading: loginVM.loading.value,
            //     onPress: () {
            //       if (_formKey.currentState!.validate()) {
            //         loginVM.loginApi();
            //       }
            //     }))
          ],
        ),
      ),
    );
  }
}
