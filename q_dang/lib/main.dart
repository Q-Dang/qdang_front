import 'package:flutter/material.dart';
import 'package:q_dang/Screen/main_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      fontFamily: 'NotoKr',
    ),
    home: MainScreen(),
  ));
}
