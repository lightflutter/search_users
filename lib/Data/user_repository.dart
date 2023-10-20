import 'package:search_users/Data/Model/user_response.dart';
import 'package:search_users/Data/data_provider.dart';

class UserRepository {
  final UserApiProvider _apiProvider = UserApiProvider();

  Future<UserResponse> getUser(String userName) async {
    return _apiProvider.getUser(userName);
  }
}