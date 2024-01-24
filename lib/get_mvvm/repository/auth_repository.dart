import 'package:get_state_management/get_mvvm/data/network/network_api_service.dart';
import 'package:get_state_management/get_mvvm/res/app_url/app_url.dart';

class AuthRepository {
  final _apiService = NetworkApiServices();

  Future<dynamic> loginApi(var data) async {
    dynamic response = await _apiService.postApi(data, AppUrl.loginApi);
    return response;
  }
}
