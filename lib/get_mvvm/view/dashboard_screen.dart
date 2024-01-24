import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_state_management/get_mvvm/view_models/controller/home/home_view_model.dart';
import '../data/response/status.dart';
import '../res/components/general_exception.dart';
import '../res/components/internet_exception.dart';
import '../res/routes/route_names.dart';
import '../view_models/controller/user_preference/user_preference.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final homeController = Get.put(HomeViewModel());

  UserPreference userPreference = UserPreference();

  @override
  void initState() {
    super.initState();
    homeController.userListApi(false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        actions: [
          IconButton(
              onPressed: () {
                userPreference.removeUser().then((value) {
                  Get.offAllNamed(RouteName.loginView);
                });
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      body: Obx(() {
        switch (homeController.rxRequestStatus.value) {
          case Status.LOADING:
            return const Center(child: CircularProgressIndicator());
          case Status.ERROR:
            if (homeController.error.value == 'No internet') {
              return InterNetExceptionWidget(
                onPress: () {
                  homeController.userListApi(true);
                },
              );
            } else {
              return GeneralExceptionWidget(onPress: () {
                homeController.userListApi(true);
              });
            }
          case Status.COMPLETED:
            return ListView.builder(
                itemCount: homeController.userList.value.data!.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(homeController
                            .userList.value.data![index].avatar
                            .toString()),
                      ),
                      title: Text(homeController
                          .userList.value.data![index].firstName
                          .toString()),
                      subtitle: Text(homeController
                          .userList.value.data![index].email
                          .toString()),
                    ),
                  );
                });
        }
      }),
    );
  }
}
