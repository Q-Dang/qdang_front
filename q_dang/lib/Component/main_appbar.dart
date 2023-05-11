import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget with PreferredSizeWidget {
  const MainAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AppBar(
      centerTitle: true,
      title: Image.asset(
        'asset/img/logo.png',
        height: kToolbarHeight * 0.6,
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
