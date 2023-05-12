import 'package:flutter/material.dart';
import 'package:q_dang/Screen/new_game_screen.dart';

class NewGameSettingScreen extends StatefulWidget {
  const NewGameSettingScreen({super.key});

  @override
  State<StatefulWidget> createState() => _NewGameSettingScreenState();
}

class _NewGameSettingScreenState extends State<NewGameSettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text('새로운 게임 세팅 화면'),
        ElevatedButton(
          child: Text('게임 시작'),
          onPressed: () {
            setState(() {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const NewGameScreen();
              }));
            });
          },
        )
      ],
    ));
  }
}
