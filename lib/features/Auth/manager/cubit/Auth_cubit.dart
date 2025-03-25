// ignore_for_file: file_names, unnecessary_import, non_constant_identifier_names

import 'package:bloc/bloc.dart';
import 'package:course/features/Auth/data/model/Auth_model.dart';
import 'package:course/features/Auth/data/repo/Auth_repo.dart';
import 'package:course/features/Auth/manager/cubit/Auth_satate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthRepo repo = AuthRepo();
  AuthCubit._internal() : super(RegisterInitialState());
  static final AuthCubit _cubitInstance = AuthCubit._internal();
  factory AuthCubit() {
    return _cubitInstance;
  }
  static AuthCubit get(context) => BlocProvider.of(context);
  final TextEditingController name_Controller = TextEditingController();
  final TextEditingController password_Controller = TextEditingController();
  final TextEditingController confirm_password_Controller =
      TextEditingController();
  final TextEditingController email_Controller = TextEditingController();
  final TextEditingController phone_Controller = TextEditingController();

  final TextEditingController login_email_Controller = TextEditingController();
  final TextEditingController login_password_Controller =
      TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey();

  void onRegister() async {
    if (validate()) {
      emit(RegisterLoadingState());
      var response = await repo.register(
          email: email_Controller.text,
          name: name_Controller.text,
          password: password_Controller.text,
          phone: int.tryParse(phone_Controller.text)!);
      response.fold((String error) {
        emit(RegisterErrorState(error));
      }, (r) {
        emit(RegisterSuccessState(msg: r));
      });
    }
  }

  void onLogin() async {
    if (validate()) {
      emit(LoginLoadingState());
      var response = await repo.Login(
          email: login_email_Controller.text,
          password: login_password_Controller.text);

      response.fold((String error) {
        emit(LoginErrorState(error));
      }, (User user) {
        repo.model = LoginResponseModel(user: user);
        emit(LoginSuccessState());
      });
    }
  }

  void getUser() {
    if (validate()) {
      emit(GetUserLoading());
      var response = repo.getUser();
      response.fold((String error) => emit(GetUserError(error)),
          (String username) => emit(GetUserSuccess(username)));
    }
  }

  bool validate() {
    return formKey.currentState?.validate() ?? false;
  }
}
