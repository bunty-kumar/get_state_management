import 'package:get/get.dart';
import 'package:get_state_management/get_mvvm/models/dashboard/dashboard_model.dart';
import 'package:get_state_management/get_mvvm/repository/home_repository.dart';

import '../../../data/response/status.dart';

class HomeViewModel extends GetxController {
  final _api = HomeRepository();

  final rxRequestStatus = Status.LOADING.obs;

  final userList = DashboardModel().obs;

  RxString error = ''.obs;

  void setRxRequestStatus(Status _value) => rxRequestStatus.value = _value;

  void setUserList(DashboardModel _value) => userList.value = _value;

  void setError(String _value) => error.value = _value;

  void userListApi(bool refresh) {
    if (refresh) {
      setRxRequestStatus(Status.LOADING);
    }
    _api.userListApi().then((value) {
      setRxRequestStatus(Status.COMPLETED);
      setUserList(value);
      print("home viewModel success $error");
    }).onError((error, stackTrace) {
      setError(error.toString());
      print("home viewModel error $error");
      setRxRequestStatus(Status.ERROR);
    });
  }
}
