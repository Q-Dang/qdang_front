import 'package:flutter/material.dart';
import 'package:q_dang/Constant/colors.dart';

class AbilityDistribution extends StatelessWidget {
  String name;

  AbilityDistribution({super.key, required this.name});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            '나의 실력 분포도',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const Text(
                '경기 전적을 통하여 분석한 ',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                '$name님',
                style: const TextStyle(
                  color: kprimaryColor,
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Text(
                '의 실력 분포도',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: const Color(0xFFE8E8E8))),
            child: const SizedBox(
                height: 100,
                width: 100,
                child: Center(child: Text("분포도 들어갈 자리"))),
          )
        ],
      ),
    );
  }
}
