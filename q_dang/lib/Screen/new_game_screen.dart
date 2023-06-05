import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../Constant/colors.dart';
import '../Utils/data_util.dart';

class NewGameScreen extends StatefulWidget {
  List<Color> backgroundColors = [
    kprimaryColor,
    kprimaryColor2,
    kprimaryColor3
  ];
  List<Color> foregroundColors = [
    Colors.white,
    knameColor,
    knameColor,
    knameColor
  ];
  List<String> users = ["홍길동", "김익명", "김게임"];
  List<int> scores = [0, 0, 0];
  NewGameScreen({super.key});

  @override
  State<StatefulWidget> createState() => _NewGameScreenState();
}

class _NewGameScreenState extends State<NewGameScreen> {
  void onExitPressed() {
    Navigator.of(context).pop();
  }

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
  }

  @override
  void dispose() {
    super.dispose();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Flexible(
            flex: 1,
            child: _Header(
              users: widget.users,
            ),
          ),
          Flexible(
            flex: 3,
            child: _Body(
              users: widget.users,
              scores: widget.scores,
            ),
          ),
          Flexible(
            flex: 1,
            child: _Footer(
              onExitPressed: onExitPressed,
            ),
          )
        ],
      ),
    );
  }
}

class _Header extends StatelessWidget {
  List<Color> backgroundColors = [
    kprimaryColor,
    kprimaryColor2,
    kprimaryColor3
  ];
  List<Color> foregroundColors = [
    Colors.white,
    knameColor,
    knameColor,
    knameColor
  ];
  List<String> users;
  _Header({required this.users});
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: users
          .map(
            (e) => Expanded(
              child: Container(
                child: Center(
                  child: Text(
                    e,
                    style: TextStyle(color: foregroundColors[users.indexOf(e)]),
                  ),
                ),
                color: backgroundColors[users.indexOf(e)],
              ),
            ),
          )
          .toList(),
    );
  }
}

class _Body extends StatelessWidget {
  List<String> users;
  List<int> scores;
  _Body({required this.users, required this.scores});
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: users
          .map((e) => Expanded(
                  child: _UserScore(
                score: scores[users.indexOf(e)],
              )))
          .toList(),
    );
  }
}

class _UserScore extends StatefulWidget {
  int score;
  _UserScore({required this.score});
  @override
  State<StatefulWidget> createState() => _UserScoreState();
}

class _UserScoreState extends State<_UserScore> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            child: Text(
              "+",
              style: TextStyle(fontSize: 30),
            ),
            style: ElevatedButton.styleFrom(
                backgroundColor: kprimaryColor, shape: CircleBorder()),
            onPressed: () {
              setState(() {
                widget.score += 10;
              });
            },
          ),
          Text(
            widget.score.toString(),
            style: TextStyle(fontSize: width / 10),
          ),
          Center(
            child: ElevatedButton(
              child: Text(
                "-",
                style: TextStyle(fontSize: 30),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: kthirdColor, shape: CircleBorder()),
              onPressed: () {
                setState(() {
                  widget.score -= widget.score > 0 ? 10 : 0;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _Footer extends StatefulWidget {
  VoidCallback onExitPressed;
  _Footer({required this.onExitPressed});
  @override
  State<StatefulWidget> createState() => _FooterState();
}

class _FooterState extends State<_Footer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Flexible(
            fit: FlexFit.tight,
            flex: 1,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: kthirdColor,
                    textStyle: const TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: widget.onExitPressed,
                child: const Text("경기 종료")),
          ),
          Flexible(
            fit: FlexFit.tight,
            flex: 1,
            child: Container(),
          ),
          Flexible(
            fit: FlexFit.tight,
            flex: 1,
            child: _TimerWidget(),
          ),
          Flexible(
              fit: FlexFit.tight,
              flex: 1,
              child: ElevatedButton(onPressed: () {}, child: Text("턴 되돌리기"))),
          Flexible(
              fit: FlexFit.tight,
              flex: 1,
              child: ElevatedButton(onPressed: () {}, child: Text("턴 넘기기")))
        ],
      ),
    );
  }
}

class _TimerWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<_TimerWidget> {
  int _seconds = 0;
  int _minute = 0;
  bool _isRunning = false;
  late Timer _timer;

  void _startTimer() {
    _isRunning = true;
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _seconds++;
        _minute += _seconds == 60 ? 1 : 0;
        _seconds = _seconds == 60 ? 0 : _seconds;
      });
    });
  }

  void _stopTimer() {
    _isRunning = false;
    _timer.cancel();
  }

  @override
  void initState() {
    super.initState();

    _startTimer();
  }

  @override
  void dispose() {
    super.dispose();

    _stopTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
            child: Text(
                '${DataUtil.getTimeFormat(_minute)}:${DataUtil.getTimeFormat(_seconds)}')),
      ),
    );
  }
}
