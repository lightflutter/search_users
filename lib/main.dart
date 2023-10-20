import 'package:search_users/Data/Model/user_response.dart';
import 'package:search_users/Data/user_repository.dart';
import 'package:search_users/app.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:search_users/counter_observer.dart';


void main() async {
  final UserRepository userRepository = UserRepository();
  final UserResponse userResponse = await userRepository.getUser('waizord');
  if(userResponse.error.isNotEmpty) {
    print('ERROR ${userResponse.error}');
  } else {
    print(userResponse.results.name);
  }
  Bloc.observer = const CounterObserver();
  runApp(const CounterApp());
}