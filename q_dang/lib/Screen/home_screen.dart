import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:q_dang/Component/new_game_button.dart';
import 'package:q_dang/Component/record_card.dart';
import 'package:q_dang/Component/welcome.dart';
import 'package:q_dang/Screen/new_game_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> cardTest = ["패배", "패베", "승리", "승리", "패배"];

  @override
  void initState() {
    super.initState();

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          const Welcome(name: '홍길동'),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: cardTest.map((e) => RecordCard(res: e)).toList(),
              ),
            ),
          ),
          NewGameButton(onPressed: newGame),
        ],
      )),
    );
  }

  void newGame() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return const NewGameScreen();
    }));
  }
}
