import 'package:flutter/material.dart';
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
          child: Container(color: Color(0xFFD9D9D9)),
          height: 1,
        )
      ],
    );
  }
}
