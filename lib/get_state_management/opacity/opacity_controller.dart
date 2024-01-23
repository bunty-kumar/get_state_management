import 'dart:developer';
import 'package:get/get.dart';

class OpacityController extends GetxController {
  RxDouble opacity = 0.2.obs;

  changeOpacity(double val) {
    if (val > 0.2) {
      opacity.value = val;
    }
    log("opacity ${opacity.value}");
  }
}
