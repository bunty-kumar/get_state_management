import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_state_management/get_state_management/opacity/opacity_controller.dart';

class OpacityScreen extends StatefulWidget {
  const OpacityScreen({super.key});

  @override
  State<OpacityScreen> createState() => _OpacityScreenState();
}

class _OpacityScreenState extends State<OpacityScreen> {
  OpacityController controller = Get.put(OpacityController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Opacity Screen"),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            Obx(
              () => Container(
                color: Colors.red.withOpacity(controller.opacity.value),
                height: 200,
                width: 200,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Obx(
              () => Slider(
                value: controller.opacity.value,
                onChanged: (value) {
                  controller.changeOpacity(value);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
