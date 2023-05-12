import 'package:dio/dio.dart';
import 'package:q_dang/Constant/http_url.dart';

import '../Model/user_model.dart';

class UserRepository {
  static Future<String> fetchData() async {
    await Future.delayed(Duration(seconds: 2));

    return "홍길동";
  }
  // static Future<List<User>> fetchData(String userId) async {
  //   final response = await Dio().get('$baseUrl/$userId', queryParameters: {
  //     'param1': 1,
  //     'param2': 'param2',
  //   });
  //   return response.data['response']['body']
  //       .map<User>(
  //         (user) => User.fromJson(json: user),
  //       )
  //       .toList();
  // }
}
