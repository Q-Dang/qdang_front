import 'package:flutter/material.dart';
import 'package:q_dang/Constant/colors.dart';

class Welcome extends StatelessWidget {
  final String name;

  const Welcome({super.key, required this.name});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text('이미지 들어갈 자리'),
          //Image.asset('asset/img/que.png'),
          //이미지,
          Text("$name님, 환영합니다!",
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: ksecondaryColor,
                fontSize: 15,
                fontWeight: FontWeight.w700,
              )),
          const Text(
            '오늘도 즐거운 경기되세요 :-)',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: kprimaryColor,
                fontSize: 10,
                fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}
