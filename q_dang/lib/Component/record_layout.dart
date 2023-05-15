import 'package:flutter/material.dart';

class RecordLayout extends StatelessWidget {
  final VoidCallback onDetailPressed;
  Color mainColor;

  RecordLayout(
      {super.key, required this.onDetailPressed, required this.mainColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          width: 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                  child: Icon(
                Icons.circle,
                color: mainColor,
              )),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  child: Icon(
                Icons.circle,
                color: mainColor,
              )),
              Expanded(
                  child: Text(
                '3구',
                style: TextStyle(color: mainColor),
              )),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(14, 0, 14, 8),
          child: SizedBox(
            width: 1,
            child: Container(color: const Color(0xFFD9D9D9)),
          ),
        ),
        Expanded(
          flex: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'My 기록',
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              Text(
                '점수',
                style: TextStyle(
                  color: mainColor,
                  fontSize: 11,
                ),
              ),
              Text(
                '마무리 점수',
                style: TextStyle(
                  color: mainColor,
                  fontSize: 11,
                ),
              ),
              Text(
                'HR',
                style: TextStyle(
                  color: mainColor,
                  fontSize: 11,
                ),
              ),
              Text(
                '득점율',
                style: TextStyle(
                  color: mainColor,
                  fontSize: 11,
                ),
              ),
            ],
          ),
        ),
        Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  '',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                Text(
                  '200 / 200',
                  style: TextStyle(
                    color: mainColor,
                    fontSize: 11,
                  ),
                ),
                Text(
                  '2 / 2',
                  style: TextStyle(
                    color: mainColor,
                    fontSize: 11,
                  ),
                ),
                Text(
                  '5',
                  style: TextStyle(
                    color: mainColor,
                    fontSize: 11,
                  ),
                ),
                Text(
                  '70%',
                  style: TextStyle(
                    color: mainColor,
                    fontSize: 11,
                  ),
                ),
              ],
            )),
        SizedBox(
          width: 30,
          child: TextButton(
              child: Center(child: Icon(Icons.navigate_next)),
              style: TextButton.styleFrom(iconColor: mainColor),
              onPressed: onDetailPressed),
        )
      ],
    );
  }
}
