import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_state_management/get_navigation/screen2.dart';

class NavigateScreen1 extends StatefulWidget {
  const NavigateScreen1({super.key});

  @override
  State<NavigateScreen1> createState() => _NavigateScreen1State();
}

class _NavigateScreen1State extends State<NavigateScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation Screen1"),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Get.to( const NavigateScreen2());
            // Get.off(const NavigateScreen2());
            // Get.offAll(const NavigateScreen2());
          },
          child: const Text("Go to screen 2"),
        ),
      ),
    );
  }
}
