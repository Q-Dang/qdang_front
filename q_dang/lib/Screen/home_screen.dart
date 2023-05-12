import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:q_dang/Component/new_game_button.dart';
import 'package:q_dang/Component/record_card.dart';
import 'package:q_dang/Component/welcome.dart';
import 'package:q_dang/Repository/record_repository.dart';
import 'package:q_dang/Screen/new_game_screen.dart';
import 'package:q_dang/Screen/new_game_setting_screen.dart';

class HomeScreen extends StatefulWidget {
  final String name;
  const HomeScreen({super.key, required this.name});

  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<List<String>> fetchData() async {
    final recordModels = await RecordRepository.fetchData();
    return recordModels;
  }

  @override
  void initState() {
    super.initState();

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: FutureBuilder<List<String>>(
              future: fetchData(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Center(
                    child: Text('에러가 발생하였습니다.'),
                  );
                }
                if (!snapshot.hasData) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                List<String> recordData = snapshot.data!;
                return Column(
                  children: [
                    Welcome(name: widget.name),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: recordData
                              .map((record) => RecordCard(res: record))
                              .toList(),
                        ),
                      ),
                    ),
                    NewGameButton(onPressed: newGame),
                  ],
                );
              })),
    );
  }

  void newGame() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return const NewGameSettingScreen();
    }));
  }
}
