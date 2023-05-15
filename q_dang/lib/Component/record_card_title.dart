import 'package:flutter/material.dart';
import 'package:q_dang/Constant/colors.dart';
import 'package:q_dang/Utils/data_util.dart';

class RecordCardTitle extends StatelessWidget {
  Color mainColor;
  String res;

  RecordCardTitle({super.key, required this.mainColor, required this.res});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Row(
        children: [
          SizedBox(
            width: 83,
            height: 21,
            child: Container(
              color: mainColor,
              child: Text(
                res,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            width: 4,
          ),
          SizedBox(
            width: 56,
            height: 13,
            child: Text(
              DataUtil.DateTimetoString(DateTime.now()),
              style: TextStyle(
                color: ksecondaryColor,
                fontSize: 9,
                fontWeight: FontWeight.w700,
              ),
            ),
          )
        ],
      ),
    );
  }
}
