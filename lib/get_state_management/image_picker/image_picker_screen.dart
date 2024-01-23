import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:io';
import 'package:get_state_management/get_state_management/image_picker/image_picker_controller.dart';

class ImagePickerScreen extends StatefulWidget {
  const ImagePickerScreen({super.key});

  @override
  State<ImagePickerScreen> createState() => _ImagePickerScreenState();
}

class _ImagePickerScreenState extends State<ImagePickerScreen> {
  ImagePickerController controller = Get.put(ImagePickerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Picker Screen"),
      ),
      body: Center(
        child: Obx(
          () => Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.grey,
                  backgroundImage: controller.selectedImagePath.isNotEmpty
                      ? FileImage(File(controller.selectedImagePath.toString()))
                      : null,
                ),
              ),
              /* Container(
                height: 200,
                width: 200,
                decoration: const BoxDecoration(
                    color: Colors.blue, shape: BoxShape.circle),
                child: controller.selectedImagePath.value.isNotEmpty
                    ? CircleAvatar(
                        child: Image.file(
                          File(controller.selectedImagePath.value),
                        ),
                      )
                    : const SizedBox(),
              ),*/
              const SizedBox(
                height: 12,
              ),
              ElevatedButton(
                onPressed: () {
                  if (controller.selectedImagePath.isNotEmpty) {
                    controller.clearImage();
                  } else {
                    controller.getImage();
                  }
                },
                child: Text(controller.selectedImagePath.isNotEmpty
                    ? "Remove"
                    : "Pick Image"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
