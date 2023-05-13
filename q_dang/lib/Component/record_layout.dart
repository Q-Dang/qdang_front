import 'package:flutter/material.dart';

class RecordLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            child: Center(
          child: Text('전적 상세보기 레이아웃'),
        ))
      ],
    );
  }
}
