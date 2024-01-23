import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_state_management/get_state_management/switch/switch_controller.dart';

class SwitchScreen extends StatefulWidget {
  const SwitchScreen({super.key});

  @override
  State<SwitchScreen> createState() => _SwitchScreenState();
}

class _SwitchScreenState extends State<SwitchScreen> {
  SwitchController controller = Get.put(SwitchController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Switch Screen"),
      ),
      body: Center(
        child: Column(
          children: [
            Obx(
              () => SwitchListTile(
                title: const Text("Notification"),
                value: controller.switchVal.value,
                onChanged: (val) {
                  controller.changeSwitch(val);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
