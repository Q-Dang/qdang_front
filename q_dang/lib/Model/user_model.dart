import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class User {
  final int id;
  final String name;

  User({required this.id, required this.name});

  factory User.fromJson(Map<String, dynamic> json)=>
    _$UserFromJson(json);

  // User.fromJson({required Map<String, dynamic> json})
  //     : id = int.parse(json['id']),
  //       name = json['nickname'];
}
