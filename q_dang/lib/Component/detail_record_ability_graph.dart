import 'package:flutter/material.dart';
import 'package:q_dang/Constant/colors.dart';

import 'ability_graph.dart';

class DetailRecordAbilityGraph extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: const Text(
            '경기 내',
            style: TextStyle(
              color: kprimaryColor, 
              fontSize: 15
              ),
            ),
        ),
        const Text(
          '나의 실력 분포도',
          style: TextStyle(
            color: kprimaryColor, 
            fontSize: 15
            ),
          ),
        Padding(
          padding: const EdgeInsets.only(bottom: 17),
          child: const Text(
            '이 경기 전적을 통하여 분석한 나의 실력 분포도',
            style: TextStyle(
              fontSize: 10
              ),
            ),
        ),
        Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Colors.white,
                border: Border.all(color: const Color(0xFFE8E8E8)),
                 boxShadow: [
                  const BoxShadow(
                    color: Color(0xFF787878), 
                    offset: Offset(0, 0), 
                    blurRadius: 8.0
                    )
                ]
                ),
            child: AbilityGraph(),
          )
      ],
    );
  }

}