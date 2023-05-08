import 'package:flutter/material.dart';

class NewGameScreen extends StatefulWidget {
  const NewGameScreen({super.key});

  @override
  State<StatefulWidget> createState() => _NewGameScreenState();
}

class _NewGameScreenState extends State<NewGameScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('새로운게임')),
    );
  }
}
