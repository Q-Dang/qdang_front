enum GameCode {
  //포켓볼
  POKETBALL,
  //4구
  FOURBALL,
  //3구
  THREEBALL,
}

class Record {
  int id;
  GameCode code;
  int score;
  DateTime gameTime;

  Record.fromJson({required Map<String, dynamic> json})
      : id = int.parse(json['id']),
        code = GameCode.values.elementAt(int.parse(json['code'])),
        score = int.parse(json['score']),
        gameTime = DateTime.parse(json['gameTime']);
}
