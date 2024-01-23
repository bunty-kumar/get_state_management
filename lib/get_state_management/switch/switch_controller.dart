import 'dart:developer';
import 'package:get/get.dart';

class SwitchController extends GetxController {
  RxBool switchVal = false.obs;

  changeSwitch(bool val) {
    switchVal.value = val;
    log("switch val : $val");
  }
}
