import 'package:flutter/material.dart';
import 'package:q_dang/Component/ability_distribution.dart';
import 'package:q_dang/Component/my_profile.dart';

class MyPageScreen extends StatelessWidget {
  const MyPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        MyProfile(name: '홍길동'),
        SizedBox(
          height: 1,
          child: Container(color: const Color(0xFFD9D9D9)),
        ),
        AbilityDistribution(name: '홍길동')
      ],
    );
  }
}
