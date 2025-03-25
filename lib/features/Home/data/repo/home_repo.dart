import 'package:course/core/network/api_helper.dart';


class HomeRepo {
  HomeRepo._internal();
  static final HomeRepo _instance = HomeRepo._internal();
  factory HomeRepo() => _instance;

  APIHelper apiHelper = APIHelper();

  
}
