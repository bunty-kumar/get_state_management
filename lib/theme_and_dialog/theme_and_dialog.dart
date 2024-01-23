import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeAndDialog extends StatefulWidget {
  const ThemeAndDialog({super.key});

  @override
  State<ThemeAndDialog> createState() => _ThemeAndDialogState();
}

class _ThemeAndDialogState extends State<ThemeAndDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Theme And Dialog"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: <Widget>[
            Card(
              child: ListTile(
                title: const Text("Show Dialog"),
                subtitle: const Text("Are you sure want to delete?"),
                onTap: () {
                  Get.defaultDialog(
                    title: "Delete?",
                    content: const Column(
                      children: [Text("Are you sure want to delete?")],
                    ),
                    contentPadding: const EdgeInsets.all(20),
                    titlePadding: const EdgeInsets.only(top: 20),
                    confirm: TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: const Text("Ok")),
                    cancel: TextButton(
                        onPressed: () {}, child: const Text("cancel")),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                title: const Text("Show Dialog"),
                subtitle: const Text("Are you sure want to delete?"),
                onTap: () {
                  Get.bottomSheet(
                      Container(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: [
                            ListTile(
                              leading: const Icon(Icons.light_mode),
                              title: const Text("Light Mode"),
                              onTap: () {
                                Get.changeTheme(ThemeData.light());
                              },
                            ),
                            ListTile(
                              leading: const Icon(Icons.dark_mode),
                              title: const Text("Dark Mode"),
                              onTap: () {
                                Get.changeTheme(ThemeData.dark());
                              },
                            ),
                          ],
                        ),
                      ),
                      backgroundColor: Colors.white);
                },
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar('User 123', 'Successfully created',
              snackPosition: SnackPosition.TOP,
              backgroundColor: Colors.red,
              colorText: Colors.white);
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
