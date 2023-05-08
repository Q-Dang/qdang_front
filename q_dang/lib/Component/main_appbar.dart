import 'package:flutter/material.dart';
import 'package:q_dang/Constant/colors.dart';

class MainAppBar extends StatelessWidget with PreferredSizeWidget {
  const MainAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Center(
        child: Text(
          "큐당로고 들어갈 곳",
          style: TextStyle(color: kprimaryColor),
        ),
      ),
      actions: [
        IconButton(
            color: Colors.grey,
            onPressed: onNotificationPressed,
            icon: const Icon(Icons.notifications)),
        IconButton(
          color: Colors.grey,
          onPressed: onSearchPressed,
          icon: const Icon(Icons.search),
        )
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1.0),
        child: Container(
          color: const Color(0xFFD9D9D9),
          height: 1.5,
        ),
      ),
      elevation: 0,
      backgroundColor: Colors.white,
    );
  }

  void onNotificationPressed() {}

  void onSearchPressed() {}

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
