import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TranslationScreen extends StatefulWidget {
  const TranslationScreen({super.key});

  @override
  State<TranslationScreen> createState() => _TranslationScreenState();
}

class _TranslationScreenState extends State<TranslationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("translationTitle".tr),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ListTile(
              title: Text("message".tr),
              subtitle: Text("name".tr),
            ),
            Row(
              children: [
                TextButton(
                    onPressed: () {
                      Get.updateLocale(const Locale("en", "US"));
                    },
                    child: Text("english".tr)),
                TextButton(
                    onPressed: () {
                      Get.updateLocale(const Locale("hi", "IN"));
                    },
                    child: Text("hindi".tr)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
