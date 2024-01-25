import 'package:flutter_advanced_omar_ahmed/core/network/api_error_handler.dart';
import 'package:flutter_advanced_omar_ahmed/core/network/api_result.dart';
import 'package:flutter_advanced_omar_ahmed/core/network/api_service.dart';
import 'package:flutter_advanced_omar_ahmed/feature/sign_up/data/models/sign_up_request_body.dart';
import 'package:flutter_advanced_omar_ahmed/feature/sign_up/data/models/sign_up_response.dart';

class SignupRepo {
  final ApiService _apiService;
  SignupRepo(this._apiService); //signup repo debende on api service

  Future<ApiResult<SignupResponse>> signup(
      SignupRequestBody signupRequestBody) async {
    try {
      final response = await _apiService.signup(signupRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
