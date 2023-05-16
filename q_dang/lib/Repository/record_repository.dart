import 'package:dio/dio.dart';
import 'package:q_dang/Constant/http_url.dart';

import '../Model/record_model.dart';

class RecordRepository {
  static Future<List<String>> fetchData() async {
    return ["#1", "#2", "#3", "#2", "#1"];
  }
  // static Future<List<Record>> fetchData(int recordId) async {
  //   final response = await Dio().get('$baseUrl/$recordId', queryParameters: {
  //     'param1': 1,
  //     'param2': 'param2',
  //   });
  //   return response.data['response']['body']
  //       .map<Record>((record) => Record.fromJson(json: record))
  //       .toList();
  // }
}
