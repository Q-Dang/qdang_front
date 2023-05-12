class User {
  final int id;
  final String name;

  User.fromJson({required Map<String, dynamic> json})
      : id = int.parse(json['id']),
        name = json['nickname'];
}
