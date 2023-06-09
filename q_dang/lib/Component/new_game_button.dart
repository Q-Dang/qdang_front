import 'package:flutter/material.dart';
import 'package:q_dang/Constant/colors.dart';

class NewGameButton extends StatelessWidget {
  VoidCallback onPressed;

  NewGameButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 50,
        backgroundColor: Colors.white,
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      ),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 20),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: kprimaryColor),
          height: 62,
          child: const Center(
            child: Text(
              '새로운 경기 시작하기',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
