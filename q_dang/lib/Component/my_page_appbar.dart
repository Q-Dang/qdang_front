import 'package:flutter/material.dart';
import 'package:q_dang/Constant/colors.dart';

class MyPageAppBar extends StatelessWidget with PreferredSizeWidget {
  const MyPageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          Icon(Icons.account_circle_outlined, size: preferredSize.height * 0.6),
          const SizedBox(
            width: 8,
          ),
          const Text(
            '마이페이지',
            style: TextStyle(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),
          )
        ],
      ),
      backgroundColor: kprimaryColor,
      actions: [
        IconButton(
            color: Colors.white,
            onPressed: _onSettingPressed,
            icon: const Icon(Icons.settings)),
      ],
    );
  }

  void _onSettingPressed() {}

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
