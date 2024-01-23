import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_state_management/get_navigation/screen1.dart';

class GetNavigationScreen extends StatefulWidget {
  const GetNavigationScreen({super.key});

  @override
  State<GetNavigationScreen> createState() => _GetNavigationScreenState();
}

class _GetNavigationScreenState extends State<GetNavigationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Get Navigation"),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Get.to(const NavigateScreen1());
          },
          child: const Text("Go to screen 1"),
        ),
      ),
    );
  }
}
