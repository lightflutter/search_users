import 'package:dio/dio.dart';
import 'package:search_users/Shared/constants.dart';

class UserApiProvider{
  final String _endpoint = url;
  final Dio _dio = Dio();

  Future<UserResponse> getUser() async {
    try {
      Response response = await _dio.get(_endpoint);
      return UserResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return UserResponse.withError("$error");
    }
  }
}