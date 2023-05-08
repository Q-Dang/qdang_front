import 'package:flutter/material.dart';
import 'package:q_dang/Component/record_card_title.dart';
import 'package:q_dang/Constant/colors.dart';

class RecordCard extends StatelessWidget {
  final String res;

  const RecordCard({super.key, required this.res});

  @override
  Widget build(BuildContext context) {
    final Color mainColor = res.contains('승') ? kprimaryColor : ksecondaryColor;

    return SizedBox(
      height: 150,
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: mainColor,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(16)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            RecordCardTitle(
              mainColor: mainColor,
              res: res,
            ),
          ],
        ),
      ),
    );
  }
}
