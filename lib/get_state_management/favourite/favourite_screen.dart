import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_state_management/get_state_management/favourite/favourite_controller.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  FavouriteController controller = Get.put(FavouriteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favourite Screen"),
      ),
      body: ListView.builder(
        itemCount: controller.fruitsList.length,
        padding: const EdgeInsets.all(12),
        itemBuilder: (ctx, index) {
          return Obx(
            () => Card(
              child: ListTile(
                  title: Text(controller.fruitsList[index]),
                  trailing: Icon(
                    controller.favItem.contains(controller.fruitsList[index])
                        ? CupertinoIcons.heart_fill
                        : CupertinoIcons.heart,
                    color: controller.favItem
                            .contains(controller.fruitsList[index])
                        ? Colors.red
                        : Colors.black,
                  ),
                  onTap: () {
                    if (controller.favItem
                        .contains(controller.fruitsList[index])) {
                      controller.removeFav(controller.fruitsList[index]);
                    } else {
                      controller.addToFav(controller.fruitsList[index]);
                    }
                  }),
            ),
          );
        },
      ),
    );
  }
}
