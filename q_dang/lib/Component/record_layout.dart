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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('asset/img/default_profile.png'),
              ),
            ),
          ),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.workspaces, color: mainColor, size: 40),
              Text(
                '3구',
                textAlign: TextAlign.center,
                style: TextStyle(color: mainColor),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 14, 8),
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
