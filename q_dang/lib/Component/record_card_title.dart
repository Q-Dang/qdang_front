import 'package:flutter/material.dart';

class RecordCardTitle extends StatelessWidget {
  Color mainColor;
  String res;

  RecordCardTitle({super.key, required this.mainColor, required this.res});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Row(
        children: [
          SizedBox(
            width: 80,
            child: Container(
              color: mainColor,
              child: Text(
                res,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
          Expanded(
            child: Container(),
          ),
        ],
      ),
    );
  }
}
