// ignore_for_file: non_constant_identifier_names

import 'package:course/features/profile/data/repo/profile_repo.dart';
import 'package:course/features/profile/manager/cubit/profile_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit._internal() : super(UpdateProfileInitial());
  static final ProfileCubit _instance = ProfileCubit._internal();
  factory ProfileCubit() => _instance;

  ProfileRepo repo = ProfileRepo();

  TextEditingController update_name_controller = TextEditingController();
  TextEditingController update_phone_controller = TextEditingController();

  GlobalKey<FormState> formkey = GlobalKey();
  static ProfileCubit get(context) => BlocProvider.of(context);

  Future<void> updateProfile() async {
    if (validate()) {
      emit(UpdateProfileLoading());

      var response = await repo.updateProfile(
          name: update_name_controller.text,
          phone: int.tryParse(update_phone_controller.text)!);

      response.fold((error) {
        emit(UpdateProfileError(error));
      }, (massage) {
        emit(UpdateProfileSuccess(massage));
      });
    }
  }

  bool validate() {
    return formkey.currentState?.validate() ?? false;
  }
}
