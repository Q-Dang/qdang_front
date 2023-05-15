import 'package:flutter/material.dart';

class DetailRecordScreen extends StatelessWidget {
  final int id;
  DetailRecordScreen({required this.id});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text(
            id.toString(),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}
