import 'package:dio/dio.dart';
import 'package:search_users/Data/Model/user_response.dart';
import 'package:search_users/Shared/constants.dart';

class UserApiProvider {
  final String _endpoint = url;
  final Dio _dio = Dio();

  Future<UserResponse> getUser(String userName) async {
    try {
      Response response = await _dio.get(_setEndpointWith(userName));
      return UserResponse.fromJson(response.data);
    } catch (error) {
      return UserResponse.withError("$error");
    }
  }

  String _setEndpointWith(String userName) => _endpoint + userName;
}
