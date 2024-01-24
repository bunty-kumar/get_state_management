import 'package:flutter/foundation.dart';
import 'package:get_state_management/get_mvvm/data/network/network_api_service.dart';
import 'package:get_state_management/get_mvvm/models/dashboard/dashboard_model.dart';
import 'package:get_state_management/get_mvvm/res/app_url/app_url.dart';

class HomeRepository {
  final _apiService = NetworkApiServices();

  Future<DashboardModel> userListApi() async {
    dynamic response = await _apiService.getApi(AppUrl.userListApi);
    if (kDebugMode) {
      print("home repo $response");
    }
    return DashboardModel.fromJson(response);
  }
}
