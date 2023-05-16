import 'package:flutter/material.dart';
import 'package:q_dang/Component/record_card_title.dart';
import 'package:q_dang/Component/record_layout.dart';
import 'package:q_dang/Constant/colors.dart';

class RecordCard extends StatefulWidget {
  final String res;
  final VoidCallback onDetailPressed;

  const RecordCard(
      {super.key, required this.res, required this.onDetailPressed});

  @override
  State<RecordCard> createState() => _RecordCardState();
}

class _RecordCardState extends State<RecordCard> {
  @override
  Widget build(BuildContext context) {
    final Color mainColor =
        widget.res.contains('1') ? kprimaryColor : kthirdColor;
    final Color backgroundColor =
        widget.res.contains('1') ? Colors.white : Color(0xFFECECEC);

    return SizedBox(
      height: 117,
      child: Card(
        color: backgroundColor,
        margin: const EdgeInsets.symmetric(vertical: 5.5, horizontal: 20),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: mainColor,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(13)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            RecordCardTitle(
              mainColor: mainColor,
              res: widget.res,
              dateTime: DateTime.now(),
            ),
            Expanded(
              child: RecordLayout(
                onDetailPressed: widget.onDetailPressed,
                mainColor: mainColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
