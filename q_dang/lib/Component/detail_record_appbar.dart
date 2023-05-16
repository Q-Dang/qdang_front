import 'package:flutter/material.dart';
import 'package:q_dang/Constant/colors.dart';

class DetailRecordAppBar extends StatelessWidget with PreferredSizeWidget {
  const DetailRecordAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        centerTitle: false,
        title: const Text(
          '경기 전적 상세',
          style: TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),
        ),
        backgroundColor: kprimaryColor,
        foregroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
        ));
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
