import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_state_management/get_state_management/authentication/auth_controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  AuthController authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Screen"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: authController.emailController.value,
              decoration: const InputDecoration(hintText: "Email"),
            ),
            const SizedBox(
              height: 16,
            ),
            TextField(
              decoration: const InputDecoration(hintText: "Password"),
              controller: authController.passwordController.value,
            ),
            const SizedBox(
              height: 16,
            ),
            Obx(
              () => ElevatedButton(
                onPressed: () {
                  if (!authController.loading.value) {
                    var email =
                        authController.emailController.value.text.trim();
                    var password =
                        authController.passwordController.value.text.trim();
                    if (email.isEmpty) {
                      Get.snackbar("Validation Failed", "Please enter email",
                          backgroundColor: Colors.red, colorText: Colors.white);
                      return;
                    }
                    if (password.isEmpty) {
                      Get.snackbar("Validation Failed", "Please enter password",
                          backgroundColor: Colors.red, colorText: Colors.white);
                      return;
                    }
                    authController.loginUser();
                  }
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                child: authController.loading.value
                    ? Container(
                        alignment: Alignment.center,
                        height: 20,
                        child: const SizedBox(
                          height: 20,
                          width: 20,
                          child: CircularProgressIndicator(
                            color: Colors.white,
                          ),
                        ),
                      )
                    : Container(
                        alignment: Alignment.center,
                        child: const Text(
                          "Login",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
