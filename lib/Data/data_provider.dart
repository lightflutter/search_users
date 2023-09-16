import 'package:dio/dio.dart';
import 'package:search_users/Shared/constants.dart';

final dio = Dio();

void getHTTPS() async {
  final response = await dio.get(url);
  print(response);
}