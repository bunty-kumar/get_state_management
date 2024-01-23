import 'dart:developer';
import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt count = 0.obs;

  increment() {
    count.value++;
    log("plus ${count.value}");
  }

  decrement() {
    if (count.value > 1) count.value--;
    log("minus ${count.value}");
  }
}
