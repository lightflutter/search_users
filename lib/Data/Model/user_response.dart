import 'package:search_users/Data/Model/user.dart';

class UserResponse {
  final User results;
  final String error;

  UserResponse(this.results, this.error);

  UserResponse.fromJson(Map<String, dynamic> json)
      : results = User.fromJson(json),
        error = '';

  UserResponse.withError(String errorValue)
      : results = User.empty(),
        error = errorValue;
}