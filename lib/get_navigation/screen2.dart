import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigateScreen2 extends StatefulWidget {
  const NavigateScreen2({super.key});

  @override
  State<NavigateScreen2> createState() => _NavigateScreen2State();
}

class _NavigateScreen2State extends State<NavigateScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation Screen2"),
      ),
      body: Center(
        child: TextButton(
            onPressed: () {
              // Navigator.popUntil(context, (route) => route.isFirst);
              // Get.back();
              // Get.back();
            },
            child: const Text("Go Back")),
      ),
    );
  }
}
