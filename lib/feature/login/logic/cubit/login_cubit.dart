import 'package:flutter/widgets.dart';
import 'package:flutter_advanced_omar_ahmed/feature/login/data/models/login_request_body.dart';
import 'package:flutter_advanced_omar_ahmed/feature/login/data/repos/login_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_advanced_omar_ahmed/feature/login/logic/cubit/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  TextEditingController mailcontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitLoginStates() async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(LoginRequestBody(
      email: mailcontroller.text,
      password: passcontroller.text,
    ));

    response.when(success: (LoginResponse) {
      emit(LoginState.success(LoginResponse));
    }, failure: (error) {
      emit(LoginState.error(error: error.apiErrorModel.message ?? ''));
    });
  }
}
