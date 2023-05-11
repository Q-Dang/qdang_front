import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NewGameScreen extends StatefulWidget {
  const NewGameScreen({super.key});

  @override
  State<StatefulWidget> createState() => _NewGameScreenState();
}

class _NewGameScreenState extends State<NewGameScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
  }

  @override
  void dispose() {
    super.dispose();
    SystemChrome.setPreferredOrientations([]);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('새로운게임')),
    );
  }
}
