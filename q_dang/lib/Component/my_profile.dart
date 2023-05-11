import 'package:flutter/material.dart';
import 'package:q_dang/Constant/colors.dart';

class MyProfile extends StatelessWidget {
  final String name;

  const MyProfile({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      child: Row(
        children: [
          Image.asset(
            'asset/img/logo.png',
            height: 50,
            width: 50,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$name님',
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w700),
                ),
                const Text(
                  '모두 재밌는 당구해요~',
                  style: TextStyle(
                    fontSize: 10,
                  ),
                )
              ],
            ),
          ),
          OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  color: kprimaryColor,
                  width: 2,
                  style: BorderStyle.solid,
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
              ),
              child: const Text(
                '프로필 수정',
                style: TextStyle(
                    color: kprimaryColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 10),
              ))
        ],
      ),
    );
  }
}
