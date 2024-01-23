import 'package:get/get.dart';

class FavouriteController extends GetxController {
  RxList<String> fruitsList = [
    "Orange",
    "Mango",
    "Apple",
    "Papaya",
    "Banana",
    "PineApple",
  ].obs;
  RxList favItem = [].obs;

  addToFav(String val) {
    favItem.add(val);
  }

  removeFav(String val) {
    favItem.remove(val);
  }
}
