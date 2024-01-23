import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_state_management/localization/language.dart';
import 'get_height_width/get_height_width.dart';
import 'get_navigation/get_navigation.dart';
import 'get_state_management/counter/counter_screen.dart';
import 'get_state_management/favourite/favourite_screen.dart';
import 'get_state_management/image_picker/image_picker_screen.dart';
import 'get_state_management/opacity/opacity_screen.dart';
import 'get_state_management/switch/switch_screen.dart';
import 'localization/translation_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      translations: Languages(),
      locale: const Locale("hi", "IN"),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ImagePickerScreen(),
    );
  }
}
