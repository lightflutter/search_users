import 'package:dio/dio.dart';
import 'package:search_users/Data/Model/user_response.dart';

class UserApiProvider {
  final Dio _dio = Dio();

  Future<UserResponse> getUser(String userName) async {
    try {
      Response response = await _dio.get(_setEndpointWith(userName));
      return UserResponse.fromJson(response.data);
    } catch (error) {
      return UserResponse.withError("$error");
    }
  }

  String _setEndpointWith(String userName) {
    final httpsUri = Uri(
        scheme: 'https',
        host: 'api.github.com',
        path: 'users/$userName');
    return httpsUri.toString();
  }
}
