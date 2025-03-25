// ignore_for_file: file_names, non_constant_identifier_names

import 'package:course/core/local/local_data.dart';
import 'package:course/core/network/api_helper.dart';
import 'package:course/core/network/api_response.dart';
import 'package:course/core/network/end_points.dart';
import 'package:course/features/Auth/data/model/Auth_model.dart';
import 'package:dartz/dartz.dart';

class AuthRepo {
  AuthRepo._internal();
  static final AuthRepo _instance = AuthRepo._internal();
  factory AuthRepo() => _instance;

  APIHelper apiHelper = APIHelper();
  LoginResponseModel? model;

  Future<Either<String, String>> register(
      {required String email,
      required String name,
      required String password,
      required int phone}) async {
    try {
      ApiResponse apiResponse = await apiHelper.postRequest(
          endPoint: EndPoints.register,
          data: {
            "name": name,
            "password": password,
            "email": email,
            "phone": phone
          },
          isAuthorized: false);

      if (apiResponse.status) {
        return Right(apiResponse.message);
      } else {
        return Left(apiResponse.message);
      }
    } catch (e) {
      return Left(ApiResponse.fromError(e).message);
    }
  }

  Future<Either<String, User>> Login(
      {required String email, required String password}) async {
    try {
      ApiResponse apiResponse = await apiHelper.postRequest(
          endPoint: EndPoints.login,
          data: {"email": email, "password": password},
          isAuthorized: false);
      if (apiResponse.status) {
        LoginResponseModel loginResponseModel =
            LoginResponseModel.fromJson(apiResponse.data);
        if (loginResponseModel.user == null) {
          return Left(apiResponse.message);
        }

        LocalData.accessToken = loginResponseModel.accessToken;
        LocalData.refreshToken = loginResponseModel.refreshToken;
        return Right(loginResponseModel.user!);
      } else {
        return Left(apiResponse.message);
      }
    } catch (e) {
      return Left(e.toString());
    }
  }
  Either<String, String> getUser() {
    try {
      if (model!=null && model!.user != null && model!.user!.name != null) {
        return Right(model!.user!.name! );
      } else {
        throw Exception('Enter Your Name First');
      }
    } catch (e) {
      return Left(e.toString());
    }
  }
}
