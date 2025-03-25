import 'package:course/core/network/api_helper.dart';
import 'package:course/core/network/api_response.dart';
import 'package:course/core/network/end_points.dart';
import 'package:dartz/dartz.dart';

class ProfileRepo {
  ProfileRepo._internal();
  static final ProfileRepo _instance = ProfileRepo._internal();
  factory ProfileRepo() => _instance;

  APIHelper apiHelper = APIHelper();

  Future<Either<String, String>> updateProfile(
      {required String name, required int phone}) async {
    try {
      ApiResponse apiResponse = await apiHelper.putRequest(
          endPoint: EndPoints.update, data: {"name": name, "phone": phone});
      if (apiResponse.status) {
        return right(apiResponse.message);
      } else {
        return left(apiResponse.message);
      }
    } catch (e) {
      return Left(ApiResponse.fromError(e).message);
    }
  }
}
