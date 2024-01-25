import 'package:flutter_advanced_omar_ahmed/core/network/api_error_handler.dart';
import 'package:flutter_advanced_omar_ahmed/core/network/api_result.dart';
import 'package:flutter_advanced_omar_ahmed/core/network/api_service.dart';
import 'package:flutter_advanced_omar_ahmed/feature/login/data/models/login_request_body.dart';
import 'package:flutter_advanced_omar_ahmed/feature/login/data/models/login_response.dart';

class LoginRepo {
  final ApiService _apiService;
  LoginRepo(this._apiService); //login repo debende on api service

  Future<ApiResult<LoginResponse>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      final response = await _apiService.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
